#!/bin/bash

for (( index=1; index<=100; index++ ))
do 
	echo -ne "$index "
	if [ $(( $index%10 )) -eq 0 ]
	then
		echo ""
	fi

	if [ $(( $index%11 )) -eq 0 ]
	then
		array[$index]=$index
	fi 
done
echo "Array values is : "
echo "${array[@]}"
