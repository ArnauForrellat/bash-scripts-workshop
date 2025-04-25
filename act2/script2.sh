#!/bin/bash
#Made by ArnauForrellat
#Design a script that receives an integer from the keyboard and says whether it is negative. If the number is not negative, the script will explicitly say that the number is not negative.
echo "Write an number"
read number #I take a variable

if [ $number -lt 0 ]; then #I whether is negative
	echo "Negative"
else
	echo "The number is not negative" # If it's not negative say the sentense
fi
