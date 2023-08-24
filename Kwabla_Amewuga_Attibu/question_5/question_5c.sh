#!/bin/bash



#Author: Kwabla Amewuga Attibu
#Date Created: 20 August 2023.
#Date Modified:



cat /etc/shadow

if [ $? -eq 0 ]; then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi
