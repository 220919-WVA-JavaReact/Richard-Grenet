#!/bin/bash
#to start with, decide how far over to place first star. should be 5 + num. Left whitespace
#built dynamically with for loop?

for (( i=0; i<$1; i++ ))
do
	whitespace="    "
	for (( j=0; j<$1-$i; j++ ))
	do
		whitespace="$whitespace "
	done
	for (( k=0; k<=i; k++ ))
	do
		whitespace="$whitespace \*"
	done
	echo "$whitespace"
done

