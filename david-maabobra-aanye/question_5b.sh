#!/bin/bash


#Author: David
#Date created: 27/08/2023
#Subject: A SCRIPT THAT ACCEPTS ARGUMENT AND DETERMINE FILE OR DIRECTORY TYPE

#Accepting Arguemnts
if [ $# -ne 1 ]; then 
	echo "Main File: $0 <file_or_directory>"
	exit 2
fi

#Checking file or directory name from the argument

file_or_directory="$1"


#Determining the type of file or directory
if [ -f "$file_or_directory" ]; then
	echo "$file_or_directory is a regular file"
	exit 0
elif [ -d "$file_or_directory" ]; then
	echo "$file_or_directory is a directory"
	exit 1
else 
	echo "$file_or_directory is some other type of file"
	exit 2
fi

