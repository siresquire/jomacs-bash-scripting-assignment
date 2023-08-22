#!/bin/bash

###########################################################
#
# Author: Farouk Anderson
# Date: 18th Aug 2023
# Description: Script that loops through the /etc/passwd
# file one line at a time. Prepend each line with a line
# number followed by a colon and then a space.
###########################################################

# Display a header

    echo "╔═══════════════════════════════════════════════╗"
    echo "║                                               ║"
    echo "║            Author: Farouk Anderson            ║"
    echo "║            Created: 17th Aug 2023             ║"
    echo "║          Modified: 18th Aug 2023              ║"
    echo "║                                               ║"
    echo "║      ***Loop Function Simulation.***          ║"
    echo "║                                               ║"
    echo "╚═══════════════════════════════════════════════╝"
    echo 

count=1
while IFS= read -r line; do
    echo "$count: $line"
    count=$((count+1))
done < /etc/passwd
