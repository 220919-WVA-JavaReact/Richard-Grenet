#!/bin/bash

max=$1

for nums in $@
do
if [[ $nums -ge $max ]]
then
max=$nums
fi
done


echo "$max is the biggest number!"
