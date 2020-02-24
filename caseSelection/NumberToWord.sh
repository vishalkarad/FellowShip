# Convert number in to unit 
#! /bin/bash

# Read number from user
echo "enter numbers 1,10,100,1000 : "
read number

# Check unit in if, elif statements
if [ $number == 1 ]
then
	echo unit 
elif [ $number == 10 ] 
then
	echo ten 
elif [ $number == 100 ]
then
	echo hundred 
elif [ $number == 1000 ]
then
	echo thousand 
fi
