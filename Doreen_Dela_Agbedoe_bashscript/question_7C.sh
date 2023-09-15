#!/bin/bash
#Question_7C
#Author: Doreen Dela Agbedoe
#Created: 28th August 2023
#Description: New Ubuntu User Creation Script

# A bash script that creates a new ubuntu user. 
# The script should accept name, group name and password of the
# new user and use it to create an account for the user.

# Check if three arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <username> <groupname> <password>"
    exit 1
fi

username="$1"
groupname="$2"
password="$3"

# Create the user with the provided information
sudo useradd -m -g "$groupname" "$username"
echo "$username:$password" | sudo chpasswd

echo "User $username created with password $password"




