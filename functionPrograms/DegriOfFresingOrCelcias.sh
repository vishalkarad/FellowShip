#!/bin/bash -x
function conversion()
{
   echo "1 fahrenheit to celcious "
   echo "2 celcious to fahrenheit "
   read -p "Enter choice: " choice

   case $choice in
      1)
         read -p "Enter the temperature in fahrenheit " Fahrenheit
         if [[ $Fahrenheit -ge 32 && $Fahrenheit -le 212 ]]
         then
	    echo $(( ($Fahrenheit -32)*5/9 )) "celcious"
         else
            echo "Temperature should be between 32 to 212 Fahrenheit "
         fi
      ;;
      
      2) 
	 read -p "Enter the temperature in celcious: " celcious
         if [[ $celcious -ge 0 && $celcious -le 100 ]]
	 then
	    echo $(( ($celcious *9/5)-32 )) "Fahrenheit"
	 else
	    echo "Temperature Should be between 0 to 100 celcious"
	 fi
      ;;
      
      *) echo "invalid choice"
   esac
}

conversion
