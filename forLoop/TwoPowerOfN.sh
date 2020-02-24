
#!/bin/bash

# define variable adn asign value
two=2

# $1 is a comand line number and loop until $1
for (( start=1; start<=$1; start++ ))
do
	echo -n " $(( $two * $start ))"
done
printf "\n"
