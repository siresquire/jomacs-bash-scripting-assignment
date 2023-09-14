

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# QUESTION_6B
# Description: Bash script that asks the user for the number of lines they would like to display from the /etc/passwd file and display those lines.

# Display the message and read the number of lines user would like to see
echo -n "How many lines of /etc/passwd would you like to see? "
read num_lines

# code to check input validity and request one if not valid
if [[ ! "$num_lines" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

# Initialize line number
line_number=1

# Code to loop through display number of lines user wants to see from the /etc/passwd file
while IFS= read -r line; do
    if [[ "$line_number" -le "$num_lines" ]]; then
        echo "$line"
    else
        break
    fi
    ((line_number++))
done </etc/passwd
