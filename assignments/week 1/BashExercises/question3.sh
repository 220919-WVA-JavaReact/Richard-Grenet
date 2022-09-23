#assume first argument is number in question.
#factorial=1;
#start=$1
#while [ start > 1 ]
#do
#	for (( i=$current; i -le $1; i++ ))
#		if [[ $(( $start%$current )) -eq 0 ]]
#if [[ $1 -eq 1 ]]

start=$(( $1-1 ))
result="$1"
resultNum=$1
for (( i=$start; i>0; i-- ))
do
result="$result x $start";
resultNum=$(( $resultNum*$start ))
start=$(( $start-1 ))
done

echo "$result = $resultNum"
#echo "$1 is (($factorial))!";
