#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23

# file name input
echo Input file name
read file

# A check to see if the input is regular file, directory or some othe file
if [ -f $file ] 
then
	echo this is a regular file
	exit 0
elif [ -d $file ] 
then
	echo this is a directory
	exit 1
else
	echo this is some other file
	exit 2
fi

