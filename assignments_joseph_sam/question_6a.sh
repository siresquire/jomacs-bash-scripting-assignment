#!/bin/bash


#Author : Joseph Sam



LINE_NUMBER=1
while read LINE
do
	echo ${LINE_NUMBER}: ${LINE}
	((LINE_NUMBER++))
done < /etc/passwd
