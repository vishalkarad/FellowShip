#!/bin/bash
let table=0
two=2
start=1
while [ $start -le $1 ]
do
	table=$(( $two * $start ))
	if [ $table -le 256 ]
	then
	echo -n "$table "
	fi
        ((start++))
done
printf "\n"
