#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23


#Prompt the user to input a number
echo "From ( 1 - 7 ) What day of the week do you want to see"
read day

#Use case display day of the week by user input
case $day in
	1)
	echo Its Sunday
	;;
	2)
	echo its Monday
	;;
	3)
	echo Its Tuesday
	;;
        4)
	echo Its Wednessday
	;;
	5)
	echo Its Thursday
	;;
        6)
	echo Its Friday
	;;
        7)
	echo Its Saturday
	;;
        *)
	echo Invalid input
esac


