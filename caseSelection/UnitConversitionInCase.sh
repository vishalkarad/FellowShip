# unit Conversion of diferent length units
#!/bin/bash

# Display user menu
echo "1) Feet to Inch "
echo "2) Feet to Meter"
echo "3) Inch to Feet"
echo "4) meter to Feet"

# Read choice from user
echo "Enter a choice"
read choice

case "$choice" in

# first opration is convert feet to inch
"1")
	echo "Enter a feet"
   read feet
   inch=$(( $feet * 12 ))
   echo " Inch is $inch"
   ;;

# second opration is convert feet to meeter
"2")
   echo "Enter a fit in this format (f1 & f2)"
   read fit1
   read fit2
   meter=$(( $fit1 * $fit2 ));
   result=`echo "$meter*0.3048" | bc -l` 
   echo "Meter : $result "
   ;;

# thard opration is convert inch to feet
"3")
   echo "Enter a area in inch"
   read inch;
   fit=`echo "$inch*0.0833333" | bc -l`;
   echo "Fit is  $fit"
   ;;

# fourth opration is convert meeter to feet
"4")
   echo "Enter in meter"
   read meter
   foot=`echo "$meter*3.280839895" | bc -l`;
   echo "foot is :$foot"
   ;;

# Other choice then print message
"*")
   echo "This choice is not write" 
esac   
