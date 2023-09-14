

#!/bin/bash
# Author: Kwasi Attafua
# Created: September 9, 2023
# Jomacs-CE program: Bash Scripting Assignment
# Question_2
# Description: Bash Script directing client on how to use his card for CNP transaction

# Variables to create a 3-attempt loop
attempts=1
max_attempts=2

# Function for transaction processing
transaction_process() {

     # Pleasantries
     echo "Welcome to Udemy, Kofi."

     sleep 2s

     # Declared variable
     Expected_card_digits=1234567812344412
     Expected_post_code=T4E5J1
     Expected_CVC=113
     Expected_pin=1957

     # Request for clients' inputs
     echo "Please, enter the 16 digits on your card."

     read card_digits

     echo "Please, enter your postcode"

     read post_code

     echo "Please enter your CVC: "

     read CVC

     echo "Please enter you PIN: "

     read -s pin

     # Verification of inputed values
     if [ $card_digits = $Expected_card_digits ] && [ $post_code = $Expected_post_code ] && [ $CVC = $Expected_CVC ] && [ $pin = $Expected_pin ]; then
          echo "Transaction successful! Thank you."
          exit 0
     else
          echo "Transaction declined. You entered either wrong card-digits, postcode, CVC or pin. You have 3 maximum attempts."

          sleep 2s

          echo "You have done $attempts attempt(s)."

          sleep 2s

          while [ $attempts -le $max_attempts ]; do
               attempts=$((attempts + 1))

               sleep 2s

               transaction_process
          done
     fi
     sleep 2s
     # Decline transaction and print message
     echo "Transaction declined. Your card has been blocked. Please contact your bank."

     sleep 2s

     exit 1
}

# Calling the function
transaction_process
