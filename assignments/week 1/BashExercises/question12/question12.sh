#!/bin/bash
#first will set up a loop for arguments.

for num in $@
	do
	if [[ $(( $num%2 )) = 0 ]]
	then
	echo $num >> even.txt
	else
	echo $num >> odd.txt
	fi
done
