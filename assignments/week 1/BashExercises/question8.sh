#IFS="" read -a myarray <<< $1
#echo ${#myarray[@]}
arr=($1)
half=$(( ${#arr} / 2 ))
third=2
echo ${#arr} $arr ${arr:$third:1}
for (( i=0;i<=$half;i++ ))
do
current=$(( ${#arr}-$i-1 ))
echo $current ${arr:$i:1} ${arr:$current:1}
	if ! [[ ${arr:$i:1} = ${arr:$current:1} ]]
then
	echo "Not a palindrome: ${arr:$i:1} does not equal ${arr:$current:1}"
	exit
	fi

done
echo "$1 is a palindrome!"
