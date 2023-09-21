#!/bin/bash


#Author: David
#Date created: 09/09/2023
#Subject: A script that takes an inpt from 1-7 and ouput the a day of the week dependding on the number entered



read -p "Enter a number (1-7): " day_number

case "$day_number" in
	    1)
	      echo "sunday"
	      ;;
	    2)
	       echo "monday"
	        ;;
	    3) 
	      echo "tuesday"
	       ;;
	    4)
	       echo "wednesday"
	       ;;
	    5) 
	       echo "thursday"
	       ;;
	    6)  
	       echo "friday"
	       ;;
	    7) 
         	echo "saturday"
		;;
	    *)
		echo "Invalid , enter valuse beteen1-7"
		;;

esac
