#!/bin/bash

set -uex
# set -ue

IN_FILE_UPPER=$1
IN_FILE_LOWER=$2
OUT_FILE=$3

file_size_upper=$(stat -c '%s' $IN_FILE_UPPER)
file_size_lower=$(stat -c '%s' $IN_FILE_UPPER)
file_size=$((file_size_upper + file_size_lower))

for i in $(seq 0 $((file_size - 1))); do
	if [ $((i % 2)) -eq 1 ]; then
		# 奇数番目(上位8ビット)
		# i=1: skip=0
		# i=3: skip=1
		# i=5: skip=2
		dd if=$IN_FILE_UPPER of=$OUT_FILE bs=1 ibs=1 obs=1 count=1 skip=$((i / 2)) seek=$i
	else
		# 偶数番目(下位8ビット)
		# i=0: skip=0
		# i=2: skip=1
		# i=4: skip=2
		dd if=$IN_FILE_LOWER of=$OUT_FILE bs=1 ibs=1 obs=1 count=1 skip=$((i / 2)) seek=$i
	fi
done
