

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# QUESTION_6A
# Description: Bash script that loops through the /etc/passwd file and prepends each line with a line number, colon and space.

# Initialize line number
line_number=1

# Code to loop through each line in /etc/passwd prepending with number, colon and space
while IFS= read -r line; do
    echo "$line_number: $line"
    ((line_number++))
done </etc/passwd
