#!/bin/bash
#question a

line_number=1

while IFS= read -r line
do
    echo "$line_number: $line"
    ((line_number++))
done < /etc/passwd

#question b


echo "How many lines of /etc/passwd would you like to see?"
read num_lines

head -n "$num_lines" /etc/passwd

#qusetion c


while true
do
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
            ;;
    esac
done





































