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
palette_all=''
for rgb in $rgb_list; do
	r=$(echo "$rgb" | cut -d',' -f1)
	g=$(echo "$rgb" | cut -d',' -f2)
	b=$(echo "$rgb" | cut -d',' -f3)
	r3=$(to_3bit_col $r)
	g3=$(to_3bit_col $g)
	b3=$(to_3bit_col $b)
	hex=$(echo "obase=16;ibase=2;0000${b3}0${g3}0${r3}0" | bc)
	palette_all="$palette_all $rgb#0x$(four_digits $hex)"
done

num_cols=$(printf "%s\n" $palette_all | wc -l)
if [ $num_cols -gt $MAX_COLORS ]; then
	echo "Error: number of colors($num_cols) in $SRC_IMG_FILE exceeds MAX_COLORS($MAX_COLORS)." 1>&2
	exit 1
fi
