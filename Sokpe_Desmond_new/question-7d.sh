#!/bin/bash

# Author: Sokpe Desmond
# Created on: 22/08/23

read -p "Enter a number from 1 to 7: " day_number

case "$day_number" in
1)
	echo "Sunday"
	;;
2)
	echo "Monday"
	;;
3)
	echo "Tuesday"
	;;
4)
	echo "Wednesday"
	;;
5)
	echo "Thursday"
	;;
6)
	echo "Friday"
	;;
7)																		         		   echo "Saturday"		
	;;											
*)																					   echo "Error: Invalid input. Please enter a number between 1 and 7."
	;;										
esac
