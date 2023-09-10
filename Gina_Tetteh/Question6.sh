#!/bin/bash
#Question_6a

#Author: Georgina tetteh
#Created: 02/09/2023
 

# Initialize line number
line_number=1

# Loop through each line in /etc/passwd
while IFS= read -r line; do
	    echo "$line_number: $line"
	        ((line_number++))
	done < /etc/passwd
