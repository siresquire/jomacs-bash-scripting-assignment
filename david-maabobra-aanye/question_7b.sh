#!/bin/bash

#Author: David
#Date created: 09/09/2023
#Subject: A script that cycle through and print five best linux distributions in an array 


#Define array of linux distributions
linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Linux Mint")

#Print each distribution in the array
echo "Linux Distribution:"
for distro in "${linux_distribution[@]}"; do
	echo "$distro"

	sleep 3s

done

#Print the size of array
array_size=${#linux_distribution[@]}
echo "Array size: $array_size"
