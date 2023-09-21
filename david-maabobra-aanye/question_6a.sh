#!/bin/bash

#Author: David
#Date created: 01/09/2023
#Subject:A script that loops through the /etc/passwd one line at a time
# and prepend each line with aline number followed by a colon and the n a space



#Line number being initialised

line_number=1

#Loop through /etc/passwd

while IFS= read -r line; do
	echo "$line_number: $line"
	((line_number++))
   done < /etc/passwd
