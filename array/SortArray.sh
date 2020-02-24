#!/bin/bash

for (( index=0; index<10; index++ ))
do 
	randomNumber=$(( (RANDOM % 900 ) + 99 ))
	array[$index]=$randomNumber
done
echo "Orignal Array : "
echo "${array[@]}" 
for (( index=0; index<9; index++ ))
do	
   for (( index1=$index+1; index1<10; index1++ ))
   do
		if [ ${array[index]} -gt ${array[index1]} ]
		then
			temp=${array[index]}
			array[$index]=${array[index1]}
			array[$index1]=$temp
		fi
	done
done
echo "Sorted Array : "
echo "${array[@]}"
echo "Second Smolest Array is : ${array[1]}"
echo "Second largest Array is : ${array[8]}"
