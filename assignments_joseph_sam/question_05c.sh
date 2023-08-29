#!/bin/bash

#Author : Joseph Sam
#Date Created : August 21 2023
#Date Modified : August 21 2023


cat /etc/shadow

if [ "$?" -eq "0" ]; then
	echo "command succeeded"
	exit 0

else 
	echo "command failed"
	exit 1

fi 
