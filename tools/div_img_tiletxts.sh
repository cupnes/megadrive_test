#!/bin/bash

set -ue

# 使える色数
# - 背景色(1色)
# - 背景(Plane B)(15色)
# - 前景(Plane A)(15色)
# - ウィンドウ(15色)
# - 計: (+ 1 15 15 15)46色
MAX_COLORS=46

usage() {
	echo 'Usage:' 1>&2
	echo -e "\t$0 SRC_IMG_FILE OUTPUT_DIR" 1>&2
	echo -e "\t$0 -h" 1>&2
}

to_3bit_col() {
	local col8=$1
	if [ $col8 -ge 0 -a $col8 -le 31 ]; then
		echo '000'
	elif [ $col8 -ge 32 -a $col8 -le 63 ]; then
		echo '001'
	elif [ $col8 -ge 64 -a $col8 -le 95 ]; then
		echo '010'
	elif [ $col8 -ge 96 -a $col8 -le 127 ]; then
		echo '011'
	elif [ $col8 -ge 128 -a $col8 -le 159 ]; then
		echo '100'
	elif [ $col8 -ge 160 -a $col8 -le 191 ]; then
		echo '101'
	elif [ $col8 -ge 192 -a $col8 -le 223 ]; then
		echo '110'
	elif [ $col8 -ge 224 -a $col8 -le 255 ]; then
		echo '111'
	else
		echo "Error: $col8 is out of color range." 1>&2
		exit 1
	fi
}

four_digits() {
	local val=$1
	local current_digits=$(echo -n $val | wc -m)
	case $current_digits in
	1)
		echo "000$val"
		;;
	2)
		echo "00$val"
		;;
	3)
		echo "0$val"
		;;
	4)
		echo $val
		;;
	*)
		echo "Error: Invalid digits: %val" 1>&2
		return 1
	esac
}

to16() {
	local val=$1
	echo "obase=16;$val" | bc
}

if [ $# -eq 1 ]; then
	if [ "$1" = '-h' ]; then
		usage
		exit 0
	fi
fi
if [ $# -ne 2 ]; then
	usage
	exit 1
fi

SRC_IMG_FILE=$1
OUTPUT_DIR=$2

name=$(basename $SRC_IMG_FILE | rev | cut -d'.' -f2- | rev)
mkdir -p $OUTPUT_DIR

# convert $SRC_IMG_FILE -colorspace RGB -depth 2 -crop 8x8 $OUTPUT_DIR/${name}_%04d.txt

# パレット生成
rgb_list=$(cat $OUTPUT_DIR/${name}_*.txt | grep -v '^#' | cut -d'(' -f3 | tr -d ')' | cut -d',' -f-3 | sort -u)
palette_tbl=''
n=0	# n=0:BG, n=[1:15]:PB, n=[16:30]:PA, n=[31:45]:WI
plane=''
for rgb in $rgb_list; do
	r=$(echo "$rgb" | cut -d',' -f1)
	g=$(echo "$rgb" | cut -d',' -f2)
	b=$(echo "$rgb" | cut -d',' -f3)
	r3=$(to_3bit_col $r)
	g3=$(to_3bit_col $g)
	b3=$(to_3bit_col $b)
	hex=$(echo "obase=16;ibase=2;0000${b3}0${g3}0${r3}0" | bc)
	if [ $n -eq 0 ]; then
		plane='BG'
	elif [ $n -ge 1 -a $n -le 15 ]; then
		plane='PB'
	elif [ $n -ge 16 -a $n -le 30 ]; then
		plane='PA'
	elif [ $n -ge 31 -a $n -le 45 ]; then
		plane='WI'
	else
		echo "Error: $n is out of plane range." 1>&2
		break
	fi
	palette_tbl="$palette_tbl $plane#$rgb#0x$(four_digits $hex)"
	n=$((n + 1))
done
if [ $n -gt $MAX_COLORS ]; then
	echo "Error: number of colors($n) in $SRC_IMG_FILE exceeds MAX_COLORS($MAX_COLORS)." 1>&2
	exit 1
fi
printf "%s\n" $palette_tbl >$OUTPUT_DIR/${name}.tbl
entry=$(printf "%s\n" $palette_tbl | grep '^BG')
rgb=$(echo $entry | cut -d'#' -f2)
hex=$(echo $entry | cut -d'#' -f3)
cat <<EOF >$OUTPUT_DIR/${name}.s
PaletteBG:
	dc.w	0x0000			/* 0: Transparent */
	dc.w	$hex			/* 1: $rgb */
	dc.w	0x0000			/* 2: None */
	dc.w	0x0000			/* 3: None */
	dc.w	0x0000			/* 4: None */
	dc.w	0x0000			/* 5: None */
	dc.w	0x0000			/* 6: None */
	dc.w	0x0000			/* 7: None */
	dc.w	0x0000			/* 8: None */
	dc.w	0x0000			/* 9: None */
	dc.w	0x0000			/* A: None */
	dc.w	0x0000			/* B: None */
	dc.w	0x0000			/* C: None */
	dc.w	0x0000			/* D: None */
	dc.w	0x0000			/* E: None */
	dc.w	0x0000			/* F: None */

EOF
for plane in 'PB' 'PA' 'WI'; do
	cat <<EOF >>$OUTPUT_DIR/${name}.s
Palette${plane}:
	dc.w	0x0000			/* 0: Transparent */
EOF
	entry_list=$(printf "%s\n" $palette_tbl | grep "^$plane")
	n=1
	for entry in $entry_list; do
		rgb=$(echo $entry | cut -d'#' -f2)
		hex=$(echo $entry | cut -d'#' -f3)
		echo -e "\tdc.w\t$hex\t\t\t/* $(to16 ${n}): $rgb */"
		n=$((n + 1))
	done >>$OUTPUT_DIR/${name}.s
	for t in $(seq $n 15); do
		echo -e "\tdc.w\t0x0000\t\t\t/* $(to16 ${t}): None */"
	done >>$OUTPUT_DIR/${name}.s
	echo >>$OUTPUT_DIR/${name}.s
done
