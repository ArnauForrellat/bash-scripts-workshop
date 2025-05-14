#!/bin/bash
#Made by ArnauForrellat
#Write a script that asks the user for a password and checks whether it meets the following criteria:
#At least 8 characters long
#Contains at least 1 uppercase letter
#Contains at least 1 digit
#While the password does not meet all these requirements, the script must show an error message and ask again.
correct="no"

while [ "$correct" = "no" ]; do #In case the correct answer is no, the while will not end.
	echo "Write a password"
	read password

	if [[ "${#password}" -lt 8 ]]; then #If it does not meet the minimum number of characters, an error message is displayed. 
		echo "Error, The password need minimun 8 characters long"
	elif [[ ! "$password" =~ [A-Z] ]]; then #In case there is not a capital letter, an error is displayed
		echo "Error, the password need 1 uppercase letter"
	elif [[ ! "$password" =~ [0-9] ]]; then #If it does not meet a number, an error is displayed
		echo "Error, the password need 1 digit"
	else
		echo "Password Correct!" #in the correct case, we change the variable to end the while and the program
		correct="yes"
	fi
done
