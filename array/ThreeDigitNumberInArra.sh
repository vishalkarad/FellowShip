#!/bin/bash -x

firstSmolest=999
secondSmolest=999
firstLargest=99;
secondLargest=99

# random function run 10 times
for (( i=0; i<10; i++ ))
do
        randomNumber=$(( RANDOM%900 + 99 ))
        arr[i]=$randomNumber
	# second smolest number 
        if [[ arr[i] -lt $firstSmolest ]]
        then
                secondSmolest=$firstSmolest
                firstSmolest=${arr[$i]}
        elif [[ arr[i] -lt $secondSmolest && arr[i] -ne $firstSmolest ]]
        then
                secondSmolest=${arr[$i]}
        fi
	# second largest number
        if [[ arr[i] -gt $firstLargest ]]
        then
                secondLargest=$firstLargest
                firstLargest=${arr[$i]}
        elif [[ arr[i] -gt $secondLargest && arr[i] -ne $firstLargest ]]
        then
                secondLargest=${arr[$i]}
        fi
done

echo "${arr[@]}"
echo "second smallest array is" $secondSmolest
echo "second largest array is" $fourth
