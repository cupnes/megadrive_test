#!/bin/bash

set -uex
# set -ue

# 以下のように分割する
#        | 上位8ビット | 下位8ビット |
#        | (奇数番目)  | (偶数番目)  |
#        |-------------|-------------|
# 0x0000 | 0xNN        | 0xMM        |
# 0x0002 | 0xAA        | 0xBB        |

IN_FILE=$1

name=$(echo $IN_FILE | rev | cut -d'.' -f2- | rev)
suff=$(echo $IN_FILE | rev | cut -d'.' -f1 | rev)
out_file_upper="${name}_upper.$suff"
out_file_lower="${name}_lower.$suff"
file_size=$(stat -c '%s' $IN_FILE)

for i in $(seq 0 $((file_size - 1))); do
	if [ $((i % 2)) -eq 1 ]; then
		# 奇数番目(上位8ビット)
		# i=1: seek=0
		# i=3: seek=1
		# i=5: seek=2
		dd if=$IN_FILE of=$out_file_upper bs=1 ibs=1 obs=1 count=1 skip=$i seek=$((i / 2))
	else
		# 偶数番目(下位8ビット)
		# i=0: seek=0
		# i=2: seek=1
		# i=4: seek=2
		dd if=$IN_FILE of=$out_file_lower bs=1 ibs=1 obs=1 count=1 skip=$i seek=$((i / 2))
	fi
done
