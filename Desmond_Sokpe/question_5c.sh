#!/bin/bash

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
