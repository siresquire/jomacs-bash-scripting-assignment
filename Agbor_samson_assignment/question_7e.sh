#!/bin/bash

# Author: AGBOR SAMSON CHUKWUKA
# Date Created:7/9/2023
# Date Modified:
# Description:A script that accepts a number and determines if the number is odd or even.


read -p "Enter a number: " num

if ((num % 2 == 0)); then
	echo "$num is even."
else
	echo "$num is odd."
fi

exit 0



#
