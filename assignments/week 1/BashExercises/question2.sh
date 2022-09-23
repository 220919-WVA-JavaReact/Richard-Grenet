#!/bin/bash

num1=0;
num2=1;
result="0";
while [ $num2 -le 100 ]
do
	result="$result $num2"
intermediate=$num2
	num2=$(($num1 + $num2))
	num1=$intermediate
done

echo $result;
