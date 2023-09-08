





#!/bin/bash
#Question_7d

#Author: Nana Akosua Konadu Owusu-Ansah
#Created: 25th August 2023
#Modified: 8th September 2023
#Description: This script accepts an input from 1-7 and print the days of the week.


#a script that accepts an input from 1 - 7 and should
#print the day of the week depending on the number entered. 1 - Sunday and so forth.

read -p "Enter a number (1-7): " day_number

case "$day_number" in
    1) echo "Sunday";;
    2) echo "Monday";;
    3) echo "Tuesday";;
    4) echo "Wednesday";;
    5) echo "Thursday";;
    6) echo "Friday";;
    7) echo "Saturday";;
    *) echo "Error: Invalid input";;
esac

