#!/bin/bash

# find sum of average 

# variables
$randomNumber
$sum

# raning for loop in 5 times
for i in `seq 5`
do
   randomNumber=$(( (RANDOM %100) + 10 ))
   sum=$(( $sum + $randomNumber ))
done

echo "Sum is : $sum"
echo "Average is $(( sum / 5 ))"
