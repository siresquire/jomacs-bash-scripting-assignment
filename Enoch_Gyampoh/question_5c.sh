#!/bin/bash
  
# Author: Enoch Gyampoh
# Date Created: 24/Aug/2023
# Description: Bash script  exit with a 0 exit status


# Execute the command
cat /etc/shadow


# Capture the exit status of the command
exit_status=$?

# Check the exit status and report accordingly
if [ $exit_status -eq 0 ]; then
    echo "Command succeeded"
    echo "Existing with 0, please wait ..."
    sleep 2
    exit 0
else
    echo "Command failed"
    echo "Existing with 1, please wait ..."
    sleep 2
    exit 1
fi
