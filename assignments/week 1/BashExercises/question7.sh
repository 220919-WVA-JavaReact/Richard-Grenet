symbol=0
case $1 in

	m)
	symbol=*
	;;
	d)
	symbol=/
	;;
	a)
	symbol=+
	;;
	s)
	symbol=-
	;;
	*)
	echo "invalid operator argument. Please choose m / d / a / s as first operator."
	;;
esac
echo $(( $2 $symbol $3 ))
