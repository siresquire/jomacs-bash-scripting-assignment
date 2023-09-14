#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23


#User is given options 1-3
while true
do	
echo 1. Show disk usage.
echo 2. Show system uptime.
echo 3. Show the users logged into the system.
echo "What will you like to do (enter q to quit)"

# User input number
read num
case $num in
	1)
	df
	echo
	;;
        2)
	uptime
	echo
	;;
        3)
	who
	echo
	;;
        q)
	echo Goodbye
	sleep 1s
	exit 0
	;;
        *)
	echo Invalid option
	echo
esac
done



