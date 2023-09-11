#!/bin/bash
#Author: Paul Amoah
#Date Created: 17th august 2023
#Date modified: 17th august 2023
#Description:  Shell script to execute a command and report the exit status:


cat /etc/shadow


if [ $? - eq 0 ]; then
echo "Command succeeded"
        exit 0
else
	echo "Command failed"
	 exit 1
fi












