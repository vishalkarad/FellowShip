# Find harmonic number
#!/bin/bash
harmonicNumber=0;
one=1;
for (( start=1; start<=$1; start++ ))
do
	harmonicNumber=`echo "$one / $start + $harmonicNumber" | bc -l `
done
	echo "Harmonic number is : $harmonicNumber"
