#Authur:Georgina Tetteh
#Date created: 21/08/2023
#Date Modified:30/08/2023
#Description: Kofi's credit limit approval

#Display greeting message

echo "Welcome, kofi"

# Define the credit limit as a variable
credit_limit=2000


# Read the transaction amount from the user input

read -p "Enter the transaction amount: " transaction


# Check if the transaction is less than or equal to the credit limit


if [ $transaction -le $credit_limit ] ;then

# Approve the transaction and print a message
	  
echo "Transaction approved."
	  
	exit
	  

	  
else

	# Decline the transaction and print a message
	  
	echo "Transaction declined. You have exceeded your credit limit."
	  
	exit
	 
fi

