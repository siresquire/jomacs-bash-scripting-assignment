




#!/bin/bash
#Question_7c

#Author: Nana Akosua Konadu Owusu-Ansah
#Created: 25th August 2023
#Modified:8th September 2023
#Description: Bash Shell Script to create a new Ubuntu User

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

