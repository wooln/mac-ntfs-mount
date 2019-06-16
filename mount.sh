#!/bin/bash

label=$1
echo 0.label: $label

grep_result=`mount | grep "$label"`
array=(${grep_result// / })  
dev_path=${array[0]}
echo 1.mounted path: $dev_path

label=$1

umount "/Volumes/$label/"
echo 2.umounted $label

if [ ! -d "/Users/wooln/Volumes/$label/" ]; then  
	mkdir "/Users/wooln/Volumes/$label/" 
	echo 3.created $label
else 
	echo 3.exsits $label
fi

mount -t ntfs -o rw,auto,nobrowse $dev_path "/Users/wooln/Volumes/$label"
echo 4.mount

open "/Users/wooln/Volumes/$label"
echo 5.open

