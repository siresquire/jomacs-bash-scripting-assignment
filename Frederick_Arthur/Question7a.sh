#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23


# Reading the directory name from user input
echo Enter the directory name: 
read directory

# Checking if the specified directory exists
if [ ! -d "$directory" ] 
then
	echo The specified directory does not exist
      	exit 1
fi

# Using the 'du' command to get the size of the directory in human-readable format
size=$(du -sh "$directory")

# Outputting the directory size
echo "The size of the directory $directory is: $size"

