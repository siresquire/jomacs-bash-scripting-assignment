# Author: AGBOR SAMSON CHUKWUKA
# Date Created:27/8/2023
# Date Modified:3/9/2023
# Description:A bash shell script to direct Kofi on how to activate his card at an RBC cash machine.

# Welcome message
  echo "Welcome to RBC, Kofi! We're excited to have you as a customer."
  sleep 4s

  # Prompt user to insert the card
   echo "Please insert your credit card ending in XXXXXXX4412 into the cash machine."
   sleep 1s

   # Wait for Kofi to insert the card (simulated here with a read command)
    read -p "Press Enter when your card is inserted..."
    sleep 3s

    #Prompt Kofi to enter his desired 4-digit PIN
    echo "Please enter your desired 4-digit PIN and Press Enter:"       

    #Read the PIN securely (hide Kofi's input)
    read -sp pin1:
    echo
    sleep 1s

    # Prompt Kofi to re-enter his PIN for verification
    echo "Please re-enter your 4-digit PIN for verification and Press Enter:"

    # Read the second PIN securely (hide user input)
    read -sp pin2:
    echo 

    # Check if both entered PINs match
    if [ "$pin1" = "$pin2" ]; then
	    sleep 3s
	    echo "PIN set successfully. Your card is now activated."        
    else
	    echo "PINs do not match. Please start the activation process again."
    fi
    sleep 2s

    # Farewell message to Kofi
     echo "Thank you, Kofi! for choosing RBC. Enjoy your banking experience!"
     exit 0
