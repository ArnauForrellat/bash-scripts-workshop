#!/bin/bash
#Made by ArnauForrellat
#Design a script that receives an integer from the keyboard and says whether it is positive or negative, comparing it to zero.
echo "Write a number"
read number #I take parameter

if [ $number -gt 0 ]; then  #comapre it's positive
	echo "Positive"
elif [ $number -lt 0 ]; then #compare it's negative
	echo "Negative"
fi
