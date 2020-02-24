# Gambler
#!/bin/bash

# variable define and asign values
mony=100
target=200

# Read number to how many times play user
echo "How many time your play : "
read play
# mony equal to 0 then user not play a game 
while [ $play != 0 ]
do
  
	random=$(( RANDOM%10 ))
#  Random number genrate 0 to 9 or random number greter than 4 then he wine 
	if [ $random -ge 5 ]
	then 
   	   echo "you win Re 1 "
    	((mony++))
    	
		if [ $mony -eq $target ]
    	then
      	   echo "Your target is complited"
			$play=0
    	fi
	else
   	   echo "you loss Re 1"
    	((mony--))
  	
		 if [ $mony == 0 ]
     	 then
     	 	echo "Sorry you'r balence is : '0'"
         $play=0
  		 fi
	fi
	((play--))

	if [ $play == 0 ]
	then
   	   echo "your limit is done "
	fi

done

# finaly total amount
echo "your mony is : $mony"
