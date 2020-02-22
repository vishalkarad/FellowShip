# Arthmatic oprations  using three number

#!/bin/bash

# read three number from user
echo "Enter a three number : "
read firstNumber
read secondNumber
read thardNumber

# 4 arthamatic oprations and asign result
first=$(( $firstNumber + ($secondNumber * $thardNumber) ))
second=$(( ($firstNumber % $secondNumber) + $thardNumber ))
thard=$(( $thardNumber + ($firstNumber / $secondNumber) ))
forth=$(( ($firstNumber * $secondNumber) + $thardNumber ))

# check which is greter one by one in if elif
if [ $first -gt $second -a $first -gt $thard -a $first -gt $forth ]
then 
	echo "Maximum number is $first"
elif [ $second -gt $first -a $second -gt $thard -a $second -gt $forth ]
then 
   echo "Maximum number is $second"

elif [ $thard -gt $first -a $thard -gt $second -a $thard -gt $forth ]
then 
   echo "Maximum number is $thardt"

else
   echo "Maximum number is $forth"
	
fi

# check lesh result in if, elif 
if [ $first -lt $second -a $first -lt $thard -a $first -lt $forth ]
then 
	echo "Minimum number is $first"
elif [ $second -lt $first -a $second -lt $thard -a $second -lt $forth ]
then 
   echo "Minimum number is $second"

elif [ $thard -lt $first -a $thard -lt $second -a $thard -lt $forth ]
then 
   echo "Minimum number is $thardt"

else
   echo "Minimum number is $forth"

fi


