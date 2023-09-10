#!/bin/bash
#Question_7b

#Author: Georgina Tetteh
#Created: 06/09/2023
#Description:

linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

echo "Linux Distributions:"
for distro in "${linux_distributions[@]}"; do
	    echo "$distro"
    done

    array_size=${#linux_distributions[@]}
    echo "Array Size: $array_size"
