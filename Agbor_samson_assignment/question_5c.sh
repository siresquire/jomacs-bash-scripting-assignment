#!/bin/bash

# Author: AGBOR SAMSON CHUKWUKA
# Date Created:3/9/2023
# Date Modified:
# Description:A script that executes the command “cat /etc/shadow”.

cat /etc/shadow

if [ $? -eq 0 ]; then
	echo "Command succeeded"
	exit 0
else
	echo "Command failed"
	exit 1
fi

