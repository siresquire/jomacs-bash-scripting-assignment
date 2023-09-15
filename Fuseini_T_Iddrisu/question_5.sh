#!/bin/bash

#Author: Fuseini Tia Iddrisu
#Date created: September 14,2023

echo "This script will exit with 0 exit status."
exit 0

file=$1
if [ -f $file ]
then
        echo "it is a regular file."
        exit 0
elif [ -d $file ]
then
	echo "It is a directory."
	exit 1
else
	echo "Another type"
	exit 2
fi

cat /etc/shadow
if [ "$?" -eq "0" ]
then
	echo "Command succeeded"
	exit 0
else
	echo "Command failed"
	exit 1
fi




