#!/bin/bash

# Find prime number
function primeNumber(){
	count=0
	for (( i=2; i<=$1/2; i++ ))
	do
		if [ $(($1 % $i)) == 0 ]
		then
			(( count++ ))
		fi
	done

	if [ $count == 0 ]
	then
		echo "1 "
	else
		echo "0 "
	fi
}

# check number is palindrom or not in palindrom in function
function palindromeNumber()
{
   
   temp=$1;
   sum=0;

   while [ $temp -ne 0 ]
   do
      sum=$(( $(( $sum*10 )) + $(( $temp%10 )) ));
      temp=$(( $temp/10 ))
   done

   if [ $sum -eq $1 ]
   then 
      echo "1"
   else 
      echo "0"
   fi
}



read -p "Ente a Number : " primeNumber

prime=$( primeNumber $(($primeNumber)) )
if [ $prime -eq 1 ]
then
	echo "$primeNumber is prime number "
	palindom=$( palindromeNumber $(($primeNumber)) )
	
	if [ $palindom -eq 1 ]
	then
		echo "$primeNumber is prime and palindrom also : "
	else 
		echo "$primeNumber is not prime Number : "
	fi

else
	echo "$primeNumber is not prime number : " 
fi

