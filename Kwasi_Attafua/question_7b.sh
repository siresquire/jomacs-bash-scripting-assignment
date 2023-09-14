

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# QUESTION_7B
# Description: Bash script that cycles through and prints all the items in the array and the array size

# Array of five best Linux distributions
linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

# Display the message
echo "Five best Linux Distributions:"

sleep 1s

# Code that cycles through the script and prints all items in the array
for distro in "${linux_distributions[@]}"; do
    echo "$distro"
done

sleep 2.5s
# Code that reads the array size
array_size=${#linux_distributions[@]}

# Displays the array size
echo "Array Size: $array_size"

