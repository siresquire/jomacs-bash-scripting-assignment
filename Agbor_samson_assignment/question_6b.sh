#!/bin/bash
# Author: AGBOR SAMSON CHUKWUKA
# Date Created:4/9/2023
# Date Modified:
# Description: A script that asks the user for the number of lines they would like to display from the /etc/passwd file and display those lines.
 

# Prompt the user for the number of lines to display
 read -p "How many lines of /etc/passwd would you like to see? " num_lines

# Check if the input is a valid number
 if ! [[ "$num_lines" =~ ^[0-9]+$ ]]; then
	 echo "Invalid input. Please enter a valid number of lines."
	 exit 1
 fi
 # Display the requested number of lines from /etc/passwd
  head -n "$num_lines" /etc/passwd

  exit 0
