
#!/bin/bash
#Author: Paul Amoah
#Date Created: 17th august 2023
#Date modified: 17th august 2023




read -p "How many lines of /etc/passwd would you like to see? " num_lines

  if ![ "$num_lines" =~ ^[0-9]+ $ 11] ; then 
	
	echo "Invalid input. Please enter a valid number."
       	exit 1
  fi



