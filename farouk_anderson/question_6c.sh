#!/bin/bash

###########################################################
#
# Author: Farouk Anderson
# Date: 18th Aug 2023
# Description: Script that loops through the /etc/passwd
# file and ask the number of line to be displayed.
# 
###########################################################

# Display a header

    echo "╔═══════════════════════════════════════════════╗"
    echo "║                                               ║"
    echo "║            Author: Farouk Anderson            ║"
    echo "║            Date: 18th Aug 2023                ║"
    echo "║                                               ║"
    echo "║         ***Function With Menu Option.***      ║"
    echo "║                                               ║"
    echo "╚═══════════════════════════════════════════════╝"
    echo

while true; do
    echo "Menu:"
    echo "1. Show disk usage"
    echo "2. Show system uptime"
    echo "3. Show logged-in users"
    echo "4. Press q to quit."
   
    read -p "Enter your choice: " choice

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
