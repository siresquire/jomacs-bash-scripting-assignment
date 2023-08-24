#!/bin/bash



#Author: Kwabla Amewuga Attibu
#Date Created: 20 August, 2023
#Date Modified:



echo "Enter a number (1-7) to get the day of the week:"
read num

case "$num" in
    1) echo "Sunday" ;;
    2) echo "Monday" ;;
    3) echo "Tuesday" ;;
    4) echo "Wednesday" ;;
    5) echo "Thursday" ;;
    6) echo "Friday" ;;
    7) echo "Saturday" ;;
    *) echo "Error: Invalid input." ;;
esac

