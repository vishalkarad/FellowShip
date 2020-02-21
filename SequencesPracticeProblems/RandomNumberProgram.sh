#!/bin/bash

# print random number in 10 times

for i in `seq 10`
do

# genrate random number 1 to 6 and print
randomNumber=$(( ( RANDOM % 7 ) + 1 ))
echo "random no is $randomNumber"
done
