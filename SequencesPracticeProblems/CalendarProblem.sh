#!/bin/bash -x

# ************** Calender Problem On Comand Line *************

# Three comand line variables $1 $2 $3

# Variables 
$year
$mounth
$deat

# Opration of variables
year=$(($3-(14-$2)/12))
x=$(($year+$year/4-$year/100+$year/400))
mounth=$(($2+12*((14-$2)/12)-2))
deat=$((($1+$x+31*($mounth/12))%7))

# print day using case
case "$deat" in
"0") 
	echo "SUNDAY" ;;
"1")
	echo "MONDAY" ;;
"2") 
	echo "TUESDAY" ;;
"3") 
	echo"WEDNESDAY" ;;
"4") 
	echo "THURSDAY" ;;
"5") 
	echo "FRIDAY" ;;
"*") 
	echo "SATURDAY" ;;
esac


