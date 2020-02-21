
#!/bin/bash

# **************** Addition Of Two Random Number ****************

# Variables
$rnumber
$rnumber2
$addition

# Create to random function and asign values 
rnumber=$((RANDOM%100))
rnumber2=$((RANDOM%100))

# Display two random number
echo "first random number is $rnumber and second radom number is $rnumber2"

# Addition of two random number and display value
addition=$(( $rnumber + $rnumber2 ))
echo "Addition is : $addition"
