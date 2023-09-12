#!/bin/bash
#Author: Wisdom Chinedozi
#Date created:29th Auguast 2023
# Description: Bash Scripting Assignments 

# Answer 1:

#!/bin/bash

# Welcome Kofi to RBC
echo "Welcome to RBC, Kofi!"

# Prompt Kofi to insert his card
echo "Please insert your credit card ending in XXXXXXX4412 to activate it."

# Read the card number and CVC
read -p "Enter the last four digits of your card number: " card_last_four
read -s -p "Enter your CVC: " cvc
echo

# Verify the card information
if [[ $card_last_four == "4412" && $cvc == "113" ]]; then
	    echo "Card information verified."

	        # Prompt Kofi to enter a PIN twice
		    read -s -p "Please enter your desired 4-digit PIN: " pin
		        echo
			    read -s -p "Please re-enter your 4-digit PIN for confirmation: " pin_confirm
			        echo

				    # Verify the PIN entries
				        if [[ $pin == $pin_confirm ]]; then
						        echo "PIN successfully set."
							        echo "Your credit card is now activated and your PIN is set."
								    else
									            echo "PIN entries did not match. Please try again."
										        fi
										else
											    echo "Card information verification failed. Please check your card details."
											    echo "Executing command 1..."
											    sleep 5  # Pause for 5 seconds
											    echo "Executing command 2..."
											    :w

#!/bin/bash
Answer (2):

def main():
    # Constants
        correct_pin = "1957"
	    correct_postcode = "T4E5J1"
	        correct_cvc = "123"  # Just an example, replace with the correct CVC
		    valid_card_ending = "4412"
		        
		        # Input from Kofi
			    entered_pin = input("Enter your PIN: ")
			        entered_card_number = input("Enter the first part of your 16-digit card number: ")
				    entered_postcode = input("Enter your postcode: ")
				        entered_cvc = input("Enter your CVC: ")

					    # Check PIN
					        if entered_pin != correct_pin:
							        print("Incorrect PIN. Transaction declined. Your card has been blocked.")
								        return

									    # Check card number ending
									        if not entered_card_number.endswith(valid_card_ending):
											        print("Invalid card number. Transaction declined. Your card has been blocked.")
												        return

													    # Check postcode and CVC
													        if entered_postcode != correct_postcode or entered_cvc != correct_cvc:
															        print("Incorrect postcode or CVC. Transaction declined. Your card has been blocked.")
																        return

																	    # All checks passed
																	        print("Transaction successful. Enjoy your Udemy purchase!")

																		if __name__ == "__main__":
																			    main()
echo "Executing command 1..."
sleep 5  # Pause for 5 seconds
echo "Executing command 2..."
01~
:W
													#!/bin/bash
Answer 3

def main():
    approved_credit_limit = 1000  # Example approved credit limit
        
        while True:
		        try:
			            transaction_amount = float(input("Enter transaction amount: "))
				            except ValueError:
					                print("Invalid input. Please enter a valid number.")
							            continue
								            
								            if transaction_amount <= approved_credit_limit:
										                print("Transaction approved. Enjoy your purchase!")
												        else:
														            print("Transaction declined. Transaction amount exceeds your credit limit.")

															            another_transaction = input("Do you want to perform another transaction? (yes/no): ")
																            if another_transaction.lower() != "yes":
																		                break

																				if __name__ == "__main__":
																					    main()
																					    echo "Executing command 1..."
																					    sleep 5  # Pause for 5 seconds
																					    echo "Executing command 2..."
																					    01~
																					    :w
													
												
Answer 4

#!/bin/bash

# Create directories if they don't exist
mkdir -p music images videos

# Move files to appropriate directories
mv *.mp3 *.flac music 2>/dev/null
mv *.jpg *.png images 2>/dev/null
mv *.avi *.mov videos 2>/dev/null

# Remove log files
rm *.log 2>/dev/null

# List the remaining files
echo "Remaining files:"
ls

chmod +x organize_directory.sh

./organize_directory.sh
echo "Executing command 1..."
sleep 5  # Pause for 5 seconds
echo "Executing command 2..."
01~
:w

#!/bin/bash
ANSWER 5
5 (a)
This Shell script displays a message and exit with a 0 exit status:
#!/bin/bash

echo "This will exit with a 0 exit status"
exit 0
echo "Executing command 1..."
sleep 5  # Pause for 5 seconds
echo "Executing command 2..."
01~


5(b)
This Shell script  reports file or directory type and exit with appropriate exit status:

#!/bin/bash

if [ -f "$1" ]; then
	    echo "$1 is a regular file"
	        exit 0
	elif [ -d "$1" ]; then
		    echo "$1 is a directory"
		        exit 1
		else
			    echo "$1 is some other type of file"
			        exit 2
fi
echo "Executing command 1..."
sleep 5  # Pause for 5 seconds
echo "Executing command 2..."
01~

5 (c)
This Shell script to execute a command and report status:

#!/bin/bash

cat /etc/shadow

if [ $? -eq 0 ]; then
	    echo "Command succeeded"
	        exit 0
	else
		    echo "Command failed"
		        exit 1
fi
echo "Executing command 1..."
sleep 5  # Pause for 5 seconds
echo "Executing command 2..."
01~
:w

#!/bin/bash
Answer 6
(a):Shell script to prepend line numbers to each line of /etc/passwd:

#!/bin/bash

line_number=1
while IFS= read -r line; do
	    echo "$line_number: $line"
	        ((line_number++))
	done < /etc/passwd
echo "Executing command 1..."
sleep 5  # Pause for 5 seconds
echo "Executing command 2..."
01~


(b):
Shell script to ask the user for the number of lines to display from /etc/passwd:

#!/bin/bash

read -p "How many lines of /etc/passwd would you like to see? " num_lines

if [[ $num_lines =~ ^[0-9]+$ ]]; then
	    head -n "$num_lines" /etc/passwd
    else
	        echo "Invalid input."
fi
echo "Executing command 1..."
sleep 5  # Pause for 5 seconds
echo "Executing command 2..."
01~


(c):
A shell script that allows a user to select an action
 from the menu:

 #!/bin/bash

 while true; do
	     echo "1. Show disk usage."
	         echo "2. Show system uptime."
		     echo "3. Show the users logged into the system."
		         echo "What would you like to do? (Enter q to quit.) "

			     read choice

			         case "$choice" in
					         1)
							             df -h
								                 echo
										             ;;
											             2)
													                 uptime
															             echo
																                 ;;
																		         3)
																				             who
																					                 echo
																							             ;;
																								             q)
																										                 echo "Goodbye!"
																												             exit 0
																													                 ;;
																															         *)
																																	             echo "Invalid option."
																																		                 echo
																																				             ;;
																																					         esac
																																					 done
																																					 01~:W
echo "Executing command 1..."
sleep 5  # Pause for 5 seconds
echo "Executing command 2..."
01~

Answer 7(a):

Shell script to output a given directory's size:


#!/bin/bash
if [ $# -ne 1 ]; then
	    echo "Usage: $0 <directory>"
	        exit 1
																				fi

																				directory="$1"

																				if [ ! -d "$directory" ]; then
																					    echo "Error: '$directory' is not a valid directory."
																					        exit 1
																	    fi

																	    du -sh "$directory"



(b):
 Shell script to cycle through an array of Linux distributions:

#!/bin/bash

linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch")

echo "Linux distributions:"
for distribution in "${linux_distributions[@]}"; do
	    echo "- $distribution"
    done

    echo "Array size: ${#linux_distributions[@]}"
echo "Executing command 1..."
sleep 5  # Pause for 5 seconds
echo "Executing command 2..."
01~

 7 (c):
 A bash script that creates a new ubuntu user:

#!/bin/bash

read -p "Enter new username: " username
read -p "Enter group name: " groupname
read -p "Enter password: " password

sudo adduser --ingroup "$groupname" "$username"
echo "$username:$password" | sudo chpasswd
echo "Executing command 1..."
sleep 5  # Pause for 5 seconds
echo "Executing command 2..."
01~

7 (d):

 Shell script to print the day of the week based on input:

 #!/bin/bash

 read -p "Enter a number (1-7): " num

 case "$num" in
 1) echo "Sunday" ;;
 2) echo "Monday" ;;
 3) echo "Tuesday" ;;
 4) echo "Wednesday" ;
 5) echo "Thursday" 
 6) echo "Friday" ;;
 7) echo "Saturday" ;;
 *) echo "Error: Invalid input." ;;
 esac
 echo "Executing command 1..."
 sleep 5  # Pause for 5 seconds
 echo "Executing command 2..."
 01~


 7 (e):
A script that accepts a number and determines if the
number is odd or even:


#!/bin/bash

read -p "Enter a number: " num

if (( num % 2 == 0 )); then
	    echo "$num is even."
    else
	        echo "$num is odd."
									    fi
echo "Executing command 1..."
sleep 5  # Pause for 5 seconds
echo "Executing command 2..."
01~


:w
:q
:num

