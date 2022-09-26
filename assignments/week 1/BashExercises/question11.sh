total=0

for score in $@
do
	total=$(( $total+$score ))
done
result=$(( $total/$# ))

if (( 100<=$result && 90>=$result ))
then
	echo "Grade A"
elif (( 90 > $result && 80 <= $result ))
then
	echo "Grade B"
elif (( 80>$result && 70<=$result ))
then
	echo "Grade C"
elif (( 70>$result && 60<=$result ))
then
	echo "Grade D"
else
	echo "Grade F"
fi
echo "$result"
