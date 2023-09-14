#!/bin/bash

#Author: AGBOR SAMSON CHUKWUKA
#Date Created:27/8/2023
#Date Modified:1/9/2023
#Description:A script that directs Kofi on how to use his card for the first CNP transaction at Udemy.com.


postcod=="T4E5J1"
cvc="113"
pin="1957"

# Welcome message
 echo "Welcome to your first CNP transaction with your RBC card at Udemy.com!"
 sleep 4s

 # Prompt kofi to enter his 16-digit card number
 read -p "Please enter your 16-digit card number: " card_number

 # Check and validate the card number
  if [[ $card_number =~ ^[0-9]{4}-[0-9]{4}-[0-9]{4}-4412$ ]]; then
	  echo "Card number is valid."
  else
	  echo "Invalid card number format. Transaction declined."
	  echo "Your card has been blocked. Please contact RBC for assistance."  
	  exit 1 
  fi
  sleep 3s

  # Prompt Kofi to enter his postcode
   read -p "Please enter your postcode : " postcode

   # Check if Kofi's postcode is correct (postcode:T4E5J1)
   if [ "$postcode" == "T4E5J1" ]; then
	   echo "Postcode is correct."
   else 
	   echo "Incorrect postcode. Transaction declined."
	   echo "Your card has been blocked. Please contact RBC for assistance." 
	   exit 1 
   fi
   sleep 3s

   # Prompt Kofi to enter CVC
    read -s -p "Please enter your CVC and Press Enter: " cvc
    echo

    # Check if Kofi's CVC is correct (cvc:113)
     if [ "$cvc" == "113" ]; then 
	     echo "CVC is correct."
     else
	     echo "Incorrect CVC. Transaction declined."
	     echo "Your card has been blocked. Please contact RBC for assistance." 
	     exit 1 
     fi
     sleep 3s

     # Prompt Kofi to enter his PIN
      read -s -p "Please enter your 4-digit PIN and Press Enter: " pin
      echo

      # Check if Kofi's Pin is correct (pin:1957)
       if [ "$pin" == "1957" ]; then
	       echo "PIN is correct."
	       echo "Transaction successful! Enjoy your course at Udemy.com."
       else
	       echo "Incorrect CVC. Transaction declined."
	       echo "Your card has been blocked. Please contact RBC for assistance." 
       fi
       sleep 2s

       # Farewell message to Kofi 
        echo "Thank you Kofi! for using your RBC card for your transaction."
	exit 0
