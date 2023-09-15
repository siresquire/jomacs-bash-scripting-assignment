#!/bin/bash
#Question_7D
#Author: Doreen Dela Agbedoe
#Created: 28th August 2023
#Description: Day of the Week Identifier Script

# A script that accepts an input from 1 - 7 
# It prints the day of the week depending on the number entered.


# Prompt user to input a number. 

read -p "Enter a number (1-7): " day_number

case "$day_number" in
    1) echo "Sunday";;
    2) echo "Monday";;
    3) echo "Tuesday";;
    4) echo "Wednesday";;
    5) echo "Thursday";;
    6) echo "Friday";;
    7) echo "Saturday";;
    *) echo "Error: Please enter a number between 1 and 7.";;
esac




