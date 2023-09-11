#!/bin/bash
#Author: Paul Amoah
#Date Created: 17th august 2023
#Date modified: 17th august 2023
#Description:  Shell script to determine the type of file or directory:



path=$1


if [ -f "$path" ]; then
	echo "Regular file"
       	exit O
elif [ -d "$path" ]; then
       	echo "Directory"
       	exit 1
else
	echo "Other type of file"
	 exit 2
fi









