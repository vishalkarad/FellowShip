
#!/bin/bash

sum=0;
array=(1 2 -1 -1 3 -2 4 -3)
for (( index1=0; index1<${#array[@]}; index1++ ))
do
   for (( index2=$index1+1; index2<${#array[@]}; index2++ ))
   do
      for (( index3=$index2+1; index3<${#array[@]}; index3++ ))
      do
	if (( $(( $((${array[index1]})) + $((${array[index2]})) + $((${array[index3]})) )) == 0 ))
	then
	   echo "( ${array[index1]} , ${array[index2]} , ${array[index3]} ) "
	fi
      done
   done
done


