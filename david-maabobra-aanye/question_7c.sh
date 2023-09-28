#!/bin/bash

#Author: David
#Date created: 09/09/2023
#Subject:A script that creates a new ubuntu user

#Prommpt for new user details
read -p "Enter the new user's name " user_name
read -p "Enter group name " group_name
read -s -p "Enter password for new user" user_password
echo 


#Ckecheck if group exist otherwise creat a new one
if grep -qE "^$group_name:" /etc/group; then
	echo "using existing group: $group_name"
else
	sudo groupadd "$group_name"
	echo "new group created: $group_name"
fi

#Create new user account
sudo useradd -m -g "$group_name" "$user_name"
echo "$user_name user created"

#Set password for the new user
echo "$user_name:$user_password" | sudo chpasswd
echo "password set for $user_name"
