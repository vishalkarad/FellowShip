# fine head and tail with while loop

#!/bin/bash

# define variable to start with 1
index=1;
# while loopin up to 12
while [ $index -ne 12 ]
do
   random=$((RANDOM%2))  
   # random number 0 then head, 1 then tails
      if [ $random == 0 ]
      then
	echo "head"
	((index++))
      else
        echo "tails"
	((index++))
      fi
done
