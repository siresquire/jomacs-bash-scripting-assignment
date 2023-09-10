#!/bin/bash
#Question7d

#Author:Georgina Tetteh
#Created: 06/09/2023
#Description:


#a script that accepts an input from 1 - 7 and should
#print the day of the week depending on the number entered. 1 - Sunday and so forth.

read -p "Enter a number (1-7): " day_number

case "$day_number" in
	    1) echo "Sunday";;
	        2) echo "Monday";;
		    3) echo "Tuesday";;
		        4) echo "Wednesday";;
			    5) echo "Thursday";;
			        6) echo "Friday";;
				    7) echo "Saturday";;
				        *) echo "Error: Invalid input";;
				esac

