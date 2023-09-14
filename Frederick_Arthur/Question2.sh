#!/bin/bash

# Author: Frederick Arthur
# Date Created: 14/09/23

Last_four_digit=4412
CVC=113
Pin=1957
post_Code=T4E5J1
Card_Number=0012303210004412

# Kofi enters his pin
echo You are welcome to Udemy 
sleep 1s
echo Please enter your Pin
read pin

# A Check to make sure his pin is correct
while [ $pin != 1957 ]
do
	echo Sorry your pin is incorect, Please enter the correct pin
	sleep 1s
	read pin
done
sleep 2s

# Kofi enter his details
echo Please enter your card number
read card_number
echo Please enter your cvc
read cvc
echo Please enter your post code
read post_code
echo Please wait
sleep 2s

# A check to make sure details are correct and process the transaction
if [[ $card_number == 0012303210004412 && $cvc == 113 && $post_code == T4E5J1 ]]
then
	echo Your transaction is successfull. Thanks for shoping with us.
	exit 0
else

	echo Your card number, cvc and post code not match
	echo Your trasaction is denied and your card is blocked
fi
exit 0
