#!/bin/bash
# Author: Ernest Bruce
# Created on: 20/08/2023
# Description:a shell script that loops through the /etc/passwd

# file one line at a time. Prepend each line with a line
# number followed by a colon and then a space.


# Initialize line number
line_number=1  

# Loop through /etc/passwd file
while IFS= read -r line; do
    echo "$line_number: $line"
    ((line_number++))  
done < /etc/passwd
