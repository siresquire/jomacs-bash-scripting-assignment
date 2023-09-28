#!/bin/bash


#Author: David
#Date created: 28/08/2023
#Subject:A script that executes "cat /etc/shadow" command


#Execute command

cat /etc/shadow

#check the command's exit status

if [ $? -eq 0 ]; then
	echo "Command succeeded"
	exit 0
else
	echo "Command failed"
	exit 1
fi

