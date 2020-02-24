# Number to word
#!/bin/bash 

# read number from user
echo "Enter a number 1,10,100,1000 "
read number

# checking manuvaly and print unit
if ((number==1))
then
   echo "unit"
elif ((number==10))
then 
   echo "ten"
elif ((number==100))
then 
   echo "hundred"
elif ((number==1000))
then 
   echo "thousand"
fi
