# Write a program to day and month is between March 20 and june 20, false otherwise

#!/bin/bash

# Two command line argument $1,$2 in This format  dd/mm

# Logic of program in if and elif and print out put
if [ $2 -gt 3 -a $2 -lt 6 ]
then 
	echo "this date is valid"
elif [ $2 == 6 -a $1 -le 20 ]
then
	echo "this date is valid"
elif [ $2 == 3 -a $1 -gt 19 ]
then
	echo "this date is valid"
else
	echo "this date is not valid"
fi

