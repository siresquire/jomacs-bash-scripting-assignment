

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# QUESTION_7D
# Description: Bash script that accepts input and prints day of week depending on input received.

# Input by user
echo "Want to know the day of the week based on numbers 1-7?"
sleep 1s
read -p "Enter a number (1-7): " day_number

# Case statement
case "$day_number" in
1) echo "Sunday" ;;
2) echo "Monday" ;;
3) echo "Tuesday" ;;
4) echo "Wednesday" ;;
5) echo "Thursday" ;;
6) echo "Friday" ;;
7) echo "Saturday" ;;
*) echo "Error: Invalid input" ;;
esac
