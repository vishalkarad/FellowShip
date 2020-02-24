# prime number upto the range
#!/bin/bash

# read number from user
echo "Enter a range of prime number"
read prime

echo "Prime Numbers : "

# first for looping up to read number
for (( start=2; start<= $prime; start++ ))
do
	count=0
# second for check start is prime or not 
   for(( start1=2; start1<=$start/2; start1++ ))
   do
      
		if [ $(( $start % $start1 )) == 0 ]
      then
      	((count++))
      fi
   done

   if [ $(( count )) == 0 ]
   then
   	echo -n "$start "
	fi
	
done
printf "\n"

