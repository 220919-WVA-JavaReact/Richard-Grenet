
positiveNums=0
negativeNums=0
for num in "$@"
do
	if [[ $num -ge 0 ]]
	then
		positiveNums=$(( $positiveNums+1 ))
else
	negativeNums=$(( $negativeNums+1 ))
fi
done

echo "Total result: $positiveNums positive numbers, $negativeNums negative numbers"
