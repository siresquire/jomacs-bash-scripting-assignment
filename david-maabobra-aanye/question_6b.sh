#!/bin/bash


#Author: David
#Date created: 02/09/2023
#Subject:  script asking user for the number of lines they would like to display from /etc/passwd file and display those lines


#Prompt user for the number of lines

read -p "how many lines of /etc/passwd would you like displayed: " number_of_lines


#Checking a valid positive integer is inputted
if [[ !"$number_of_lines" =~ ^[0-9]+$ ]]; then
	echo "Invalid input, enter a positive integer"
	exit 1
fi

#Display the user requested number of lines from /etc/passwd

head -n "$number_of_lines" /etc/passwd
