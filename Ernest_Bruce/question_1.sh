#! /bin/bash

# Author:Ernest Bruce
# Created on:18/08/2023
#
#
# Description:This script simulates a card activation at am ATM machine.

# This is a function that sets up a new pin by the card owner
function setPIN(){
    while true; do
    echo  -n "Enter new PIN "
    read -s newPIN
    echo
    echo -n "Repeat new PIN "
    read -s repPIN

    if [ "$newPIN" == "$repPIN" ];
    then
      echo
      echo "You've successfully activated you card and set PIN"
      break
    else
      echo
      echo "PIN do not match, please try again"
    fi     
  done     
}


#This is a function to check the CVC of the card

function checkCVC(){
    var_cvc="113"
    attempts=3

    while [ $attempts - gt 0 ]; do
    echo -n "Please enter CVC: "
    read cvcnum
    echo

    if [ "$cvcnum" == "$var_cvc" ]; then
      echo "***Your card has been confirmed***"
      echo "Hello Mr Kofi Ezedike, please insert your card and set up your PIN"
      sleep 3  
      setPIN #calling the setPIN function here
      break
    else
      echo "Invalid CVC. You have $((attempts - 1)) attempts remaining."
      attempts=$((attempts - 1))
    fi
done

if [ $attempts -eq 0 ]; then
    echo "Maximum attempts reached. Access denied."
fi  
}








echo "***WELCOME TO ROYAL BANK OF CANADA***"
echo
sleep 2
echo "*****SELECT AN OPTION*****"
echo
echo "Select (1) to activate card and set PIN"
echo "Select (2) to withdraw cash or check balance"
echo "Select (3) to cancel and exit"

while true; do
    echo -n "Enter option: "
    read num

    # Check if the input is numeric
    if [[ $num =~ ^[0-3]+$ ]]; then
        break
    else
            echo "Invalid input. Please enter a value between (1 - 3)."
    fi
done

case $num in
    "1")
        var_card_no="4421"

        count=3

        echo "You wish to activate your new card"

        while [ $count -gt 0 ]; do
            echo -n "Please enter last 4 digits on your card: "
            read cardnum
            echo

            if [ "$cardnum" == "$var_card_no" ]; then
                echo "Card number confirmed"
                checkCVC
                break
            else
                echo "Invalid card number."
                count=$((count - 1))
            fi

            if [ $count -eq 0 ]; then
                echo "Maximum attempts reached. Exiting."
                exit 1
            fi


        done
        ;;
    "2")
        echo "You wish to withdraw cash"
        ;;
    "3")
        echo "Goodbye!"
        ;;
    *)
        echo "Invalid option"
        ;;
esac
