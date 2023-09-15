#!/bin/bash
#Question_6C
#Author: Doreen Dela Agbedoe
#Created: 26th August 2023
#Description: System Information Menu Script

# A shell script that allows a user to select an action from the menu.
# The actions show the disk usage, 
# the uptime on the system, 
# and show the users that are logged into the system. 
# Tell the user to enter q to quit.

while true; do
    echo "1. Show disk usage."
    echo "2. Show system uptime."
    echo "3. Show the users logged into the system."
    echo "What would you like to do? (Enter q to quit.)"
    read choice

    case "$choice" in
        1)
            df
            ;;
        2)
            uptime
            ;;
        3)
            who
            ;;
        q)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
done




