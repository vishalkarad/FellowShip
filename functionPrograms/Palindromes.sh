#!/bin/bash -x
 
echo "Enter a two number : "
read firstNumber
read secondNumber

function reverseNumber(){
	temp=$1;
	sum=0;

	while [ $temp -ne 0 ]
	do
		sum=$(( $(( $sum*10 )) + $(( $temp%10 )) ));
                temp=$(( $temp/10 ))
	done
	if [ $sum -eq $1 ]
	then 
		echo "$1 number is palindrom"
	fi
}

reverse=$( reverseNumber $((firstNumber)))
reverse1=$( reverseNumber $((secondNumber)))

echo $reverse
echo $reverse1

