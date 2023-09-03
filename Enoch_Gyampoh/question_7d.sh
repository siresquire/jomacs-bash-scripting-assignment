#!/bin/bash


# Author: Enoch Gyampoh
# Date created: 30/08/2023
# Description:  Create a script that accepts an input from 1 - 7 and should print the day of the week depending on the number entered.

# Prompt to receive a number
read -p "Please enter a number from 1 - 7: " day_number
echo
sleep 1

case $day_number in
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
	7)
		echo "Saturday"
		;;
	*)
		echo "Error: Please enter a number between 1 and 7"
esac
