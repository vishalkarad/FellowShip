#!/bin/bash

         #**********Addition Of Two Number *************

# Variables

$firstNumber
$secondNum
$addition

# Reading Two Number From User
 
echo "Enter a Two Number : "
read firstNumber
read secondNum

# Addition Of Two Variables And Asign Thard Variable Adn Print

addition=$(( $firstNumber + $secondNum ));
echo "Addition is : $addition"

