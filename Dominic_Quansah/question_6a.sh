#!/bin/bash

# Author: Dominic Quansah
# Date Created: 30/08/23
# Description:This Shell script loops through the /etc/passwd file one line at a time.
# Prepend each line with a line number followed by a colon and then a space.



# Initialize line number
line_number=1

# Loop through /etc/passwd file
while IFS= read -r line; do
    echo "$line_number: $line"
    ((line_number++))
done < /etc/passwd
