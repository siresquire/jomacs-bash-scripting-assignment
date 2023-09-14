#!/bin/bash

echo "System Information Menu"
echo "-----------------------"

while true; do
    echo "1. Show disk usage."
    echo "2. Show system uptime."
    echo "3. Show the users logged into the system."
    echo "What would you like to do? (Enter q to quit.)"
    
    read choice
    
    case "$choice" in
        1)
            echo "Disk Usage:"
            df -h
            ;;
        2)
            echo "System Uptime:"
            uptime
            ;;
        3)
            echo "Users Logged In:"
            who
            ;;
        q)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
    
    echo
    sleep 2s  # Adjust the sleep duration as needed
done

