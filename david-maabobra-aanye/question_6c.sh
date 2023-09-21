#!/bin/bash


#Author: David
#Date created: 09/09/2023
#Subject:A script that allows a user to elect an action from the menu

while true; do
        clear
	echo "1. show disk usage"
	echo "2. show system uptime"
	echo "3. show the users lpgged into the system"
	echo "enter q to quit"

	read choice

	case "$choice" in
		1)
		  df -h
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
		  echo "Goodbye"
		  exit 0
		  ;;  
	           I) 
		  echo "Invalid option"
		  echo
                   ;;  
 esac
done
