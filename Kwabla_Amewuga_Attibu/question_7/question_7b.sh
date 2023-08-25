#!/bin/bash



#Author: Kwabla Amewuga Attibu
#Date Created:20 August, 2023 
#Date Modified:



linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

echo "Linux distributions:"
for distro in "${linux_distributions[@]}"; do
    echo "$distro"
done

echo "Array size: ${#linux_distributions[@]}"

