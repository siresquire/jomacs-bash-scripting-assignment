#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23


# cat the command "cat /etc/shadow"
sudo cat /etc/shadow

# Check the exit status of the previous command
if [ $? -eq 0 ] 
then
	echo Command succeeded
	exit 0
else
	echo Command failed
	exit 1
fi

