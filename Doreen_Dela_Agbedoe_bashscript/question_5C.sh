#!/bin/bash
#Question_5B
#Author: Doreen Dela Agbedoe
#Created: 25th August 2023
#Description: Secure Access Verifier Script

# Execute the command
sudo cat /etc/shadow

# Check the exit status of the command
if [ $? -eq 0 ]; then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi




