#!/bin/bash

if [ $# -ne 1 ]
then 
	echo "usage: $0 <directory path>"
	exit 1
fi
directory="$1"
if [ ! -d "$directory" ] 
then
	echo "$directory is not a valid directory."
	exit 1
fi
du -sh "$directory"
