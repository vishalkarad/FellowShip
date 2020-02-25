#!/bin/bash

declare -A months
for (( index=1; index<=50; index++ ))
do 
   randomNumber=$(( (RANDOM%12) +1 ))
   months[$randomNumber]=$(( ${months[$randomNumber]} + 1 ))
done
echo "Months                     : ${!months[@]}"
echo "Birth date in same mounths : ${months[@]}"
