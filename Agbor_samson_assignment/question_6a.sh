#!/bin/bash
# Author: AGBOR SAMSON CHUKWUKA
# Date Created:27/8/2023
# Date Modified:
# Description: A script that loops through the /etc/passwd file one line at a time.

# Initialize line number
 line_number=1  

# Loop through each line of the /etc/passwd file
 while IFS= read -r line; do
	 echo "$line_number: $line"
	 # Increment line number
	  ((line_number++)) 
  done < /etc/passwd
  exit 0


