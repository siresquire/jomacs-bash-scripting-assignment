#!/bin/bash

# INPUTING AND PRINTING FROM 1-7 CORRESPONDING WITH THE DAYS OF THE WEEK

echo "Day of the Week Finder"
echo "-----------------------"

read -p "Enter a number (1-7) to get the corresponding day of the week: " day_number

case "$day_number" in
    1)
        echo "Sunday"
        ;;
    2)
        echo "Monday"
        ;;
    3)
        echo "Tuesday"
        ;;
    4)
        echo "Wednesday"
        ;;
    5)
        echo "Thursday"
        ;;
    6)
        echo "Friday"
        ;;
    7)
        echo "Saturday"
        ;;
    *)
        echo "Error: Invalid input. Please enter a number between 1 and 7."
        ;;
esac

sleep 2s  # Adjust the sleep duration as needed


