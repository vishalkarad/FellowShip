#!/bin/bash

# Rectangular plot of 60 feet * 40 feet in meters

# Asign values in variables
fit1=60;
fit2=40;

# Calculation of genrate meter
feet=$(( $fit1 * $fit2 ));
result=`echo "$feet*0.3048" | bc -l` 

# print the final result
echo "Meter : $result "
