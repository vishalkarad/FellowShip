# Convert Number In To Day
#!/bin/bash

# Read number from user
echo "Enter number 0 to 6" 
read num

# Case Statement to print day
case $num in
"0") 
	echo sunday ;;
"1") 
	echo monday ;;
"2") 
	echo tuesday ;;
"3") 
	echo wednesday ;;
"4") 
	echo thursday ;;
"5") 
	echo friday ;;
"6") 
	echo saturday ;;
"*")
	echo "Please Enter 0 - 6 "
esac
