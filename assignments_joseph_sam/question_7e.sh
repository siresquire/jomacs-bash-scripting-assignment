#!/bin/bash


#Author : Joseph Sam
#Date Created : August 22 2023
#Date Modified : August 22 2023




echo -n "Enter a number:"
read n
sleep 3s


echo -n "RESULT: "
if [ `expr $n % 2` == 0 ]; then

	echo "$n is even"
else
	echo "$n is Odd"
fi


