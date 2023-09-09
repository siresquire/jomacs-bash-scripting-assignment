





#!/bin/bash
#Question_6c

#Author: Nana Akosua Konadu Owusu-Ansah
#Created: 25th August 2023
#Modified: 8th September 2023
#Description: A Shell Script that allows the user to select an action from the menu.

while true; do
    echo "1. Show disk usage."
    echo "2. Show system uptime."
    echo "3. Show the users logged into the system."
    echo "What would you like to do? (Enter q to quit.)"
    read choice

    case "$choice" in
        1)
            df
            echo
            ;;
        2)
            uptime
            echo
            ;;
        3)
            who
            echo
            ;;
        q)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option."
            echo
            ;;
    esac
done
