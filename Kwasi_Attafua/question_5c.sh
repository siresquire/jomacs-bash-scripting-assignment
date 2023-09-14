

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# QUESTION_5C
# Description: Bash script that executes the command “cat /etc/shadow” and returns appropriate exit status display messages.

# Execute the command
sudo cat /etc/shadow

# Code to check the exit status of the command
if [ $? -eq 0 ]; then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi
