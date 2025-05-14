#!/bin/bash
#Made by ArnauForrellat
#Create a script that displays an interactive menu with three options:
#1) Show current date and time
#2) Check if a file exists
#3) Exit
#The menu should repeat until the user selects “Exit”. If the input is invalid, show an error message.
menu="yes"

while [ "$menu" = "yes" ]; do #until the variable is changed, the while will not stop.
	echo "1) Show current date and time"
	echo "2) Check if a file exists"
	echo "3) Exit"
	read option #Choose one of the menu options

	if [ "$option" = "1" ]; then #If option one is selected, the current data will be displayed.
		echo "Actual date: $(date)"
	elif [ "$option" = "2" ]; then #If you choose option two, it will check if the file exists.
		echo "Enter the path of a file"
		read file
		if [[ -f "$file" ]]; then #Check if the file exists
			echo "The file exist"
		else
			echo "The file doesn't exist"
		fi 
	elif [ "$option" = "3" ]; then #If you choose option 3, you will exit the while and the program.
		echo "Good bye!"
		menu="no"
	else
		echo "ERROR, you don't choose a number between 1 and 3" #In case of choosing another option, an error will occur.
	fi
done
