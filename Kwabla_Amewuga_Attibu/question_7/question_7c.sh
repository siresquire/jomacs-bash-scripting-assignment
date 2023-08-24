#!/bin/bash



#Author: Kwabla Amewuga Attibu
#Date Created: 20 August, 2023
#Date Modified:



if [ $# -ne 3 ]; then
    echo "Usage: $0 <username> <groupname> <password>"
    exit 1
fi

username="$1"
groupname="$2"
password="$3"

sudo useradd -m -G "$groupname" "$username"
echo "$username:$password" | sudo chpasswd
echo "User $username created successfully."

