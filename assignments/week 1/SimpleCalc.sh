# read statements with the 'prompt' flag to ask for and keep track of two selected numbers.
read -p "Choose a number: " c1;
read -p "Choose a second number: " c2;

#if statement for checking if the two selected numbers are in fact numbers.
if ! [[ ${c1} =~ ^-?[0-9]+$ ]] || ! [[ ${c2} =~ ^-?[0-9]+$ ]];

#if they aren't numbers, the following code informs them they have made a mistake and restarts the program.
then
	echo "Please enter valid numbers.";
	exec $(readlink -f "$0");
fi

#another read statement to ask for a selected operation to be performed. The commented out block is validation which is currently broken.
read -p "Choose an operation  (+ - * /) : " o;
#if ! [[ ${o} =~ ^[+-\*\/]{1}$ ]]
#then
#	echo "Invalid operation. Must be + - * /";
#	exec $(readlink -f "$0");
#fi

#after selecting the operation, this prints the solution out.
	echo "The result of $c1 $o $c2 is: $(($c1 $o $c2))";

#at the end, another read statement asks if they would like to 'go again', restarting the program if they type "Y".
read -p "Go again? (Y/N): " a;
if [ $a = "Y" ];
then
exec $(readlink -f "$0");
fi
