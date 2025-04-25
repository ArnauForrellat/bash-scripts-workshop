#!/bin/bash
#Made by ArnauForrellat
#Design a script that checks if the number of parameters entered is equal to 3. If it is not, it must display an error message on the screen.
if [ $# -eq 3 ]; then # compare if the user entered 3 parametres
	echo "Good Job, you entered 3 parameters"
else
	echo "ERROR: You don't entered 3 parameters"
fi


