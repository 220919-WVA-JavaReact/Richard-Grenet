#!/bin/bash

#First maybe it will ask if the user wants to sign in or sign up.
#I want to have the user enter their username and password and call a script to validate each in turn.
#I think I should start by making a simple all-at-once style program that takes in all 5 fields and..
#adds a line to the csv. After that I can convert it into something that proactively matches the user


data="MOCK_DATA.csv";
exec < $data;
read header;
if ! [[ $(( grep -c "$1,$2,$3,$4,$5" $data )) = 1 ]]
then
echo "$1,$2,$3,$4,$5" >> $data;
else
echo "user already exists!";
fi
