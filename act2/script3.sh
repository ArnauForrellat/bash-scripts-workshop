#!/bin/bash
#Made by ArnauForrellat
#Design a script that receives an integer from the keyboard and says whether it is zero. If the number is not zero, the script will explicitly say that the number is not negative.
echo "Write a number"
read number #I take a parameter

if [ $number -eq 0 ]; then #compare if it's a 0
	echo "It's a 0"
else
	echo "The number is not zero" #If isn't a 0 say this sentense
fi

