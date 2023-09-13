

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# QUESTION_6C
# Description: Bash script that allows a user to select an action from the menu

# Display the menu messages for user to select from menu
while true; do
    sleep 2s

    echo "1. Show disk usage."
    echo "2. Show system uptime."
    echo "3. Show the users logged into the system."

    sleep 1.5s
    echo "What would you like to do? Enter a number from the menu above or q to quit: "

    # user to select a choice from menu
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

