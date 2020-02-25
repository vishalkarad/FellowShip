#!/bin/bash
    
firstDiceCount=0;
secondDiceCount=0;
thardDiceCount=0;
fourthDiceCount=0;
fiethDiceCount=0;
sixDiceCount=0;

   while [ $firstDiceCount -ne 10 -a $secondDiceCount -ne 10 -a $thardDiceCount -ne 10 -a $fourthDiceCount -ne 10 -a $fiethDiceCount -ne 10 -a $sixDiceCount -ne 10 ]
   do
	dice=$(( (RANDOM % 6 ) + 1 ))
        declare -A diesDectionary

	if [ $dice -eq 1 ]
	then
		(( firstDiceCount++ ))
		diesDectionary[1]="$firstDiceCount"
	elif [ $dice -eq 2 ]
	then
		(( secondDiceCount++ ))
		diesDectionary[2]="$secondDiceCount"
	elif [ $dice -eq 3 ]
	then
		(( thardDiceCount++ ))
		diesDectionary[3]="$thardDiceCount"
	elif [ $dice -eq 4 ]
	then
		(( fourthDiceCount++ )) 
		diesDectionary[4]="$fourthDiceCount"
	elif [ $dice -eq 5 ]
	then
		(( fiethDiceCount++ )) 
		diesDectionary[5]="$fiethDiceCount"
	else
		(( sixDiceCount++ ))
		diesDectionary[6]="$sixDiceCount"
	fi
   done

minDiceNumber=11
key=0
for (( index=1; index<=${#diesDectionary[@]}; index++ ))
do
   
   if [ ${diesDectionary[$index]} -eq 10 ]
   then
      echo "Maximum Dice number $index appears for 10 times"
   fi

   if [ ${diesDectionary[$index]} -lt $minDiceNumber ]
   then
	minDiceNumber=${diesDectionary[$index]}
	key=$index
   fi
done
  echo "Minimum Dice number $key  appears for $minDiceNumber times"

echo "${diesDectionary[@]}"
echo "${!diesDectionary[@]}"
