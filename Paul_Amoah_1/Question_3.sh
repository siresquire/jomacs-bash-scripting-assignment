#!/bin/bash

 #Author:Paul Amoah
 #Date Created: 17th august 2023
 #Date Modified:17th august 2023


 credit_limit=2000 
amount=a

echo "Welcome to the transaction approval system."
echo

read -p "Enter the transaction amount:"
echo

echo "Please wait while your transaction is processing"
echo
sleep 5s


if [ $amount <= $credit_limit ]; then
       	echo "Transaction approved!"

else
	echo "Transaction declined. The transaction amount is above your credit limit."

fi`









 
