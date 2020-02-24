# Factorization of Prime numbers
#!/bin/bash

# Read Factor number from user
echo "Enter a Factorial Number : "
read factorialNumber

# to gerate factorial in looping statement
for (( index1=2; index1<=$factorialNumber; index1++ ))
do
	if [ $(( $factorialNumber % 2 )) == 0 ]
   then 
		echo "2 "
		factorialNumber=$(( $factorialNumber / 2 ))
   else
		for (( index2=3; index2 <= $(( $factorialNumber / 2 )); index2=$(( $index2+2 )) ))
		do
	  		while [ $(( $factorialNumber % $index2 )) -eq 0 ]
	  		do
	    		echo "$index2 "
	    		factorialNumber=$(( $factorialNumber/$index2 ));
	   	done
		done
	fi
done

# last factorial number
if [ $factorialNumber -gt 2 ]
then
	echo "$factorialNumber "
fi

