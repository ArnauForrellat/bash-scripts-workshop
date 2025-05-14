#!/bin/bash
#Made by ArnauForrellat
#Write a script that first retrieves the list of system user accounts containing uppercase letters. Then, ask the user to input a username. While the inputted username is not valid (i.e., does not exist), display an error message.
#Once a valid username is entered, display ALL available information about that system user.
users=$(cut -d: -f1 /etc/passwd | grep '[A-Z]') #This command takes all users from the passwd file and only displays users with a capital letter.
echo "The users with uppercase: $users"

correcto="no" 
while [ "$correcto" != "yes" ]; do #Loop does not stop until the correct variable is a yes
	echo "Enter a username"
	read username #I ask for a username
	if  cut -d: -f1 /etc/passwd | grep "$username"; then #Checks if the user is in the system
		echo "All the information of the user $username"
		id "$username" #Show all the information of the user
		correcto="yes"
	else
		echo "The username is not valid"
	fi
done
