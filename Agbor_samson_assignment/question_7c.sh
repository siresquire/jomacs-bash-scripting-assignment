#!/bin/bash

# Author: AGBOR SAMSON CHUKWUKA
# Date Created:6/9/2023
# Date Modified:
# Description:A script that creates a new ubuntu user.

read -p "Enter username: " username
read -p "Enter group name: " groupname
read -s -p "Enter password: " password
echo

sudo useradd -m -g "$groupname" -s /bin/bash "$username"
echo "$username:$password" | sudo chpasswd

echo "User $username created successfully."

exit 0

