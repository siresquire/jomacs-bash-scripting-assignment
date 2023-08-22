#!/bin/bash: 
 This is called a shebang or hashbang and indicates the interpreter that should be used to execute the script. 
 In this case, it specifies that the script should be interpreted using the Bash shell.

#'echo "Welcome to RBC, Kofi Ezedike!":
 The echo command is used to display text on the terminal. It outputs a welcome message to Kofi.

#read -p "Enter the last four digits of your card number: " card_last_four:
 The read command is used to read input from the user.
 The -p option adds a prompt before accepting input. It prompts Kofi to enter the last four digits of his card number,
 and the input is stored in the variable card_last_four.

#read -sp "Enter your CVC: " cvc:
 Similar to the previous read command, this prompts Kofi to enter the CVC (Card Verification Code) of the card. 
 The -s option makes the input invisible (not displayed on the screen).

#read -sp "Enter your new PIN: " pin1: 
This prompts Kofi to enter a new PIN, with the input made invisible due to the -s option.

#read -sp "Re-enter your new PIN for verification: " pin2:
 This prompts Kofi to re-enter the new PIN for verification, with the input hidden.

#if [ "$pin1" == "$pin2" ]; then: 
 This starts a conditional statement. It checks if the two entered PINs (pin1 and pin2) match. If they do, the following block of code will be executed.

#echo "Thank you, Kofi! Your card has been activated, and your PIN has been set.":
 If the entered PINs match, this message is displayed, confirming that Kofi's card has been activated and the PIN has been set.

#echo "You can now use your card at RBC cash machines."
: A message informing Kofi that he can now use his card.

#else
: If the condition in the if statement is not met (i.e., the PINs do not match), this part of the code is executed.

#echo "PINs do not match. Please start the activation process again."
: An error message informing Kofi that the entered PINs do not match.

#fi
: This marks the end of the if statement, closing the conditional block.

#chmod +x activate_card.sh
: This command changes the file permissions of the script, making it executable. It allows you to run the script directly from the terminal.

#./question_1.sh
: This runs the script.
