#!/bin/bash

#First maybe it will ask if the user wants to sign in or sign up.
#I want to have the user enter their username and password and call a script to validate each in turn.
#I think I should start by making a simple all-at-once style program that takes in all 5 fields and..
#adds a line to the csv. After that I can convert it into something that proactively matches the user


data="MOCK_DATA.csv";
exec < $data;
read header;
count=$( grep -c "$1,$2,$3,$4,$5" $data );
echo $count
if [[ $count -eq 0 ]]
then
echo "$1,$2,$3,$4,$5" >> $data;
else
echo "user already exists!";
fi


#logic for returning info from file
#if FLAG FOR RETURNING INFO INSTEAD OF INPUTTING INFO
#take in username and password(username will be unique identifier)
#output full line

#grep "$1,$2" $data
#while getopts 'a' OPTION; do
  #case "$OPTION" in
    #a)
      #grep "$1,$2" $data
     # ;;
    #?)
   #   echo "ERROR: invalid option applied"
  #    ;;
 # esac
#done
#shift "$(($OPTIND -1))"
