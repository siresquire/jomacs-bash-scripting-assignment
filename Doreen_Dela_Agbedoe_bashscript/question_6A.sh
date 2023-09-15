#!/bin/bash
#Question_6A
#Author: Doreen Dela Agbedoe
#Created: 26th August 2023
#Description: Line Number Prefixer Script

# File one line at a time. 
# Prepend each line with a line number 
# followed by a colon and then a space.

# Initialize line number
line_number=1

# Loop through each line in /etc/passwd
while IFS= read -r line; do
    echo "$line_number: $line"
    ((line_number++))
done < /etc/passwd



