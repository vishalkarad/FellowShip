#!/bin/bash

# Read Factor number from user
echo "Enter a Factorial Number : "
read factorialNumber
count=0
# to genrate factorial in looping statement
for (( index=2; index<=$factorialNumber; index++ ))
do
   if [ $(( $factorialNumber % 2 )) == 0 ]
   then 
      array[((count++))]=2
      factorialNumber=$(( $factorialNumber / 2 ))
   else
      for (( index1=3; index1 <= $(( $factorialNumber / 2 )); index1=$(( $index1+2 )) ))
      do
         while [ $(( $factorialNumber % $index1 )) -eq 0 ]
	 do
	    array[((count++))]=$index1 
	    factorialNumber=$(( $factorialNumber/$index1 ));
	 done
      done
   fi
done

# last factorial number
if [ $factorialNumber -gt 2 ]
then
	array[count]=$factorialNumber
fi
echo "Factros is : "
echo "${array[@]}"

