#!/bin/bash

###########################################################
#
# Author: Farouk Anderson
# Date: 18th Aug 2023
# Description: This script prints the day of the week from
#              1-7 depending on the number entered.
###########################################################

# Display a header

    echo "╔═══════════════════════════════════════════════╗"
    echo "║                                               ║"
    echo "║          Author: Farouk Anderson              ║"
    echo "║          Created: 18th Aug 2023               ║"
    echo "║          Modified: 18th Aug 2023              ║"
    echo "║                                               ║"
    echo "║          ***DAY OF THE WEEK.***               ║"
    echo "║                                               ║"
    echo "╚═══════════════════════════════════════════════╝"
    echo 

read -p "Enter a number (1-7) to display the day: " day_number

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