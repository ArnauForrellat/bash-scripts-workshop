#!/bin/bash
#Made by ArnauForrellat
#Write a script that receives a list of integers (space-separated) as global parameters. The script must go through all the numbers using a for loop and calculate and display:
#How many are positive
#How many are negative
#How many are equal to zero
#Add a condition to validate that each parameter is a valid number before counting it.

echo "Enter a list of integers with space-separated"
read -a enteros 

validation=0  
for numero in "${enteros[@]}"; do #For that separete the numbers
	if [[ ! "$numero" =~ [0-9] ]]; then #Verify that's isn't a number
		((validation++)) #Add +1 in the variable validation
	fi
done

positive=0
negative=0
zero=0
if [ "$validation" -ge 1 ]; then #verify if the validation have a number 1 or greater
	echo "One of the parameters doesn't a integer"
else
	for integer in "${enteros[@]}"; do #For that separete the numbers
		if [ "$integer" -gt 0 ]; then #If the integer is greater than 0 add 1 in variable positive
			((positive++))
		elif [ "$integer" -lt 0 ]; then #If the integer is lower than 0 add 1 in the variable negative
			((negative++))
		else #If not graeater o lower than 0 add the +1 in the varaible 0
			((zero++))
		fi
	done
	echo "There is $positive positivo number"
	echo "There is $negative negative number"
	echo "There is $zero zero number"
fi 

