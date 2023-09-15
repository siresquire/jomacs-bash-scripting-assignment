#!/bin/bash

# Author: AGBOR SAMSON CHUKWUKA
# Date Created:3/9/2023
# Date Modified:
# Description:A script that accepts a file or directory name as an argument.


if [ -f "$1" ]; then
	echo "Regular file"
	exit 0
elif [ -d "$1" ]; then
	echo "Directory"
	exit 1
else
	echo "Other type of file"
	exit 2
fi
