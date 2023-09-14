#!/bin/bash

# Author: AGBOR SAMSON CHUKWUKA
# Date Created:7/9/2023
# Date Modified:
# Description:A script that accepts an input from 1 - 7 and prints the day of the week depending on the number entered.


read -p "Enter a number (1-7): " num

case "$num" in
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
		echo "Error: Invalid input. Enter a number from 1 to 7."
		;;
esac

exit 0
