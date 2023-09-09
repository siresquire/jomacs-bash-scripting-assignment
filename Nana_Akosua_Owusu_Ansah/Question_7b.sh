




#!/bin/bash
#Question_7b

#Author: Nana Akosua Konadu Owusu-Ansah
#Created: 25th August 2023
#Modified : 8th September 2023
#Description: Bash Script that has an array of the best 5 Linux Distributions.

linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

echo "Linux Distributions:"
for distro in "${linux_distributions[@]}"; do
    echo "$distro"
done

array_size=${#linux_distributions[@]}
echo "Array Size: $array_size"
