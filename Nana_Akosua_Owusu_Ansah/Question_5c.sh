







#!/bin/bash
#Question_5b

#Author: Nana Akosua Konadu Owusu-Ansah
#Created: 25th August 2023
#Modified: 8th September 2023
#Description: 

# Execute the command
cat /etc/shadow

# Check the exit status of the command
if [ $? -eq 0 ]; then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi

