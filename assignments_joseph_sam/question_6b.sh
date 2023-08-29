#!/bin/bash


#Author : Joseph Sam
#Date Created : August 22 2023


FILENAME="/etc/passwd"
read -p "How many lines of ${FILENAME} would you like to see? " LINE_NUMBER_MAX
if ! [[ ${LINE_NUMBER_MAX} =~ ^[0-9]+$ ]]
then
	echo error: "${LINE_NUMBER_MAX}" is not a number
	exit 1
fi
LINE_NUMBER=1
while read LINE
do
	if [ ${LINE_NUMBER} -gt ${LINE_NUMBER_MAX} ]
	then
		break
	fi
        echo ${LINE}
        ((LINE_NUMBER++))
done < ${FILENAME}
