

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# QUESTION_7E
# Description: An even-odd number identifier Bash script

# Input by user
read -p "Enter a number: " number

# Code to check if the number is divisible by 2 to qualify as even number. All else will be odd
if [ "$((number % 2))" -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi
