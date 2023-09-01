#!/bin/bash

# Author: Dominic Quansah
# Date Created: 01/09/23
# Description: This Scripts accepts an input from 1-7 and
# should print the day of the week depending on the number entered.


read -p "Enter a number(1-7): " day_number

case "$day_number" in
	1)
		echo "Sunday" ;;
	2)
		echo "Monday" ;;
	3)
		echo "Tuesday" ;;
	4)
		echo "Wednesday" ;;
	5)
		echo "Thursady" ;;
	6)
		
		echo "Saturday" ;;
	*)
		echo "invalid Error: Please enter a number between 1 and 7." ;;
esac
