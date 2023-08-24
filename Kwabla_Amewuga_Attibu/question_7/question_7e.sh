#!/bin/bash



#Author: Kwabla Amewuga Attibu
#Date Created: 20 August, 2023
#Date Modified:



echo "Enter a number:"
read num

if ((num % 2 == 0)); then
    echo "$num is even."
else
    echo "$num is odd."
fi

