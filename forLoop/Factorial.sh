# Find the factorial number

#!/bin/bash

# Read factorial number from user
echo "Enter a number : "
read factorialNumber

let factorial=1
for (( index=1; index<=$factorialNumber; index++ ))
do
   factorial=$(($factorial*$index ))
done
   echo "$factorialNumber factorial is : $factorial "
