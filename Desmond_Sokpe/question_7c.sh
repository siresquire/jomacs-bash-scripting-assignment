#!/bin/bash

# Get input for the new user's name
read -p "Enter the new user's name: " new_username

# Get input for the group name
read -p "Enter the group name for the new user: " new_groupname

# Get input for the new user's password (hide input)
read -s -p "Enter the password for the new user: " new_password
echo

# Check if the group exists, if not, create it
if ! getent group "$new_groupname" >/dev/null; then
	    sudo groupadd "$new_groupname"
	        echo "Group '$new_groupname' created."
fi

# Check if the user already exists, if not, create it
if id "$new_username" >/dev/null 2>&1; then
	    echo "User '$new_username' already exists."
    else
	        sudo useradd -m -s /bin/bash -g "$new_groupname" "$new_username"
		    echo "User '$new_username' created."
fi

# Set the password for the new user
echo "$new_username:$new_password" | sudo chpasswd

echo "Password for user '$new_username' set."

# Adding user to sudo group
sudo usermod -aG sudo "$new_username"
echo "User '$new_username' added to the sudo group."

