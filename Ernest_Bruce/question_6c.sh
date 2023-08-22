#!/bin/bash
# Author: Ernest Bruce
# Created on: 20/08/2023

# Description: a shell script that allows a user to select an action
# from the menu. The actions are to show the disk usage, show
# the uptime on the system, and show the users that are
# logged into the system. Tell the user to enter qto quit.

while true; do
    clear
    echo "1. Show disk usage."
    echo "2. Show system uptime."
    echo "3. Show the users logged into the system."
    echo "What would you like to do? (Enter q to quit.)"
    
    read choice
    
    case "$choice" in
        1)
            df -h
            echo ;;
        2)
            uptime
            echo ;;
        3)
            who
            echo ;;
        q)
            echo "Goodbye!"
            exit 0 ;;
        *)
            echo "Invalid option." ;;
    esac
    
    read -p "Press Enter to continue..."
done
