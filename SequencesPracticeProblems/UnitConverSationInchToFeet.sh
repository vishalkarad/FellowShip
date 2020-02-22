#!/bin/bash

# Unit Conversation Inch to foot 

echo "Enter a area in inch"
read inch;

# Calculate inch to foot and print
foot=`echo "$inch*0.0833333" | bc -l`;
echo "Foot is " $foot
