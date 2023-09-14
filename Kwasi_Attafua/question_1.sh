
#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# Question_1
# Description: Script directing client on how to activate card by setting up new PIN.

# Declaring variables to loop a 3 attempt PIN set up when inputed PINs do not match.
max_attempts=3
attempts=1

# Function to set pin
set_pin() {
   # Pleasantries
   echo "Welcome to PIN Setup"

   sleep 2s

   # Requesting new pin in 20 seconds
   echo "Enter a new PIN and press enter: "

   if read -s -t 20 PIN1; then
      echo "Confirm your new PIN and press enter: "
   else
      echo "Timeout, no input entered"
      set_pin
   fi

   sleep 2s

   # Requesting confirmation of new pin in 20 seconds
   if read -s -t 20 PIN2; then

      echo "Please wait while we validate your PIN"

      sleep 2s
   else

      echo "Timeout, no input entered in 20 seconds"

      set_pin
   fi

   # Validation of PINs
   if [ $PIN1 = $PIN2 ]; then
      pin=$PIN1

      sleep 1s

      echo "PIN successfully set and card activated. Thank you. Please take your card."

      sleep 2s

      exit 0
   else

      sleep 1s

      echo "PINs do not match. Please try again."

   fi

   sleep 2s

   # Loop for set_pin function when PINs do not match.

   while [ $attempts -lt $max_attempts ]; do
      echo "You have 3 attempts"

      echo "You have used $attempts attempt(s)"

      attempts=$((attempts + 1))

      set_pin

      echo "Maximum attempts reached. Exiting."

      exit 1
   done

}

# Validating card digits and CVC before pin set up
# Asssumption is that Kofi has a sheet with the XXXXXXX4412 with CVC of 113

# Pleasantries
echo "Welcome to RBC! Please insert your card"

sleep 2s

# Requesting card number suffix and CVC.
echo "Please enter the last four digits on your RBC card and press enter:"

if read -s -t 20 card_digits; then
   echo "You have entered the last four digits on your card."
   sleep 2s
else
   echo "Timeout, no input received."
   exit 1
fi

echo "Please enter your CVC and press enter:"

if read -s -t 20 CVC; then
   echo "You have entered your CVC"
   sleep 2s
else
   echo "Timeout, no input received."
   exit 1
fi

sleep 2s

# validation of inputs
expected_card_number_suffix=4412
expected_cvc=113

if [ $card_digits = $expected_card_number_suffix ]; then
   echo "Card number verified."
else
   echo "Card number not verified. Exiting. Please take your card."
   exit 1
fi

sleep 2s

if [ $CVC = $expected_cvc ]; then
   echo "CVC verified."
else
   echo "CVC not verified. Exiting. Please take your card."
   exit 1
fi

sleep 2s

# Calling the set_pin function
set_pin
