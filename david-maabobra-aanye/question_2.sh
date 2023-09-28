#!/bin/bash


#Author: David Maabobra Aanye
#Date created: 29/08/2023
#Subject: USING ATM CARD TO PURCHASE ON A WEBSITE

#welcom message
echo "To make CNP transaction, Please go the site udemy.com"

sleep 4s

#Prompt for user to enter 16-digit card number nding 4412
read -p "Enter last four-digit card number(0123 4512 0152 ****) ending with 4412: " card_number_entered
echo $card_number_entered

#Card number authentication
if [ "$card_number_entered" == "0123451201524412" ]; then
	echo "Processing, wait.................."
	 else
		 echo "incorrect card number entered"
		 exit 1
fi
       	
sleep 3s

#Prompt user to enter pin
read -sp "Enter your pin": pin
echo $pin

sleep 3s

#Pin authentication
if [ "$pin" == "1957" ]; then

	echo "Processing, wait............"
else
	echo "Pin entered incorrect"
	exit 1
fi

sleep 4s

read -p "Enter your postcode": postcode
read -p "Enter your CVC": CVC

echo $postcode
echo $CVC

echo

#Postcode and CVC authentication
if [[ "$postcode" == "T4E5J1" && "$CVC" == "113" ]]; then
	echo "Transaction successful"

        else
		echo "Transaction declined. Card blocked"
fi
	     

