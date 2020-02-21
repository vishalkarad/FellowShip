#!/bin/bash

# Find  number is Greter less or equal

# declare variable and asign value
firstNumber=10
secondNumber=10

# if elif opration to check greter,less,or equal number
if [ $firstNumber -gt $secondNumber ]
then 
	echo "$firstNumber is greter :"
elif [ $secondNumber -gt $firstNumber ]
then 
	echo "$secondNumber is greter : "
else
	echo "both are equal"
fi
