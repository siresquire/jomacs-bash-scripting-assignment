#!/bin/bash

# Author: Dominic Quansah
# Date Created: 30/08/23
# Description:

# Execute the command
cat / etc/shadow

# Check the exit status of the command
if [ $? -eq 0 ]; then
	echo "Command Succeeded"
	exit 0
else
	echo "Command failed"
	exit 1
fi

