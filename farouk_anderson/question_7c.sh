#!/bin/bash

###########################################################
#
# Author: Farouk Anderson
# Date: 17th Aug 2023
# Description: This script creates new ubuntu user.
#              It accepts username, groupname and password.
#              For security reason run as root.
#              Ex: sudo ./Scipt_name.sh newuser newgroup passwd 
###########################################################

# Display a header

    echo "╔═══════════════════════════════════════════════╗"
    echo "║                                               ║"
    echo "║          Author: Farouk Anderson              ║"
    echo "║          Created: 18th Aug 2023               ║"
    echo "║          Modified: 18th Aug 2023              ║"
    echo "║                                               ║"
    echo "║     ***WELCOME TO EASY CRETAE USER.***        ║"
    echo "║                                               ║"
    echo "╚═══════════════════════════════════════════════╝"
    echo 

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "WARNING! This script must be run as root."
    echo "Read the description on how to use script."
    exit 1
fi

# Check if all three arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <username> <groupname> <password>"
    exit 1
fi

# Read arguments
username="$1"
groupname="$2"
password="$3"

# Check if the group exists, if not, create it
if ! getent group "$groupname" >/dev/null; then
    groupadd "$groupname"
    echo "Group $groupname created"
fi

# Create the user with the provided username, add to the group, and set the password
useradd -m -s /bin/bash -g "$groupname" "$username"
echo "$username:$password" | chpasswd

echo "User $username created"