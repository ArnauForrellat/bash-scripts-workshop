#!/bin/bash
#Made by ArnauForrellat
#Design a script that receives 3 parameters, one of which must be an operation (add, subtract, multiply, or divide), a first integer numeric operand, and a second integer numeric operand. The script must:
#Check that exactly 3 parameters have been passed. 
#Verify that the last two are valid integers. 
#Verify that the operation is one of the allowed. 
#In case of division, check that the second operand is not zero. 
#Display the result of the indicated operation.
#NOTE: If any validation fails, finish the execution of the script and display a specific error message.
echo "Indicate a opertation (add, subtract, multiply, divide)"
read operation
echo "Indicate a first integer operation"
read firstinteger
echo "Indicate a second integer operation"
read secondinteger

if [ -z "$operation" ] || [ -z "$firstinteger" ] || [ -z "$secondinteger" ]; then #Check if the 3 parametres have been passed
	echo "You need to put the 3 parameters"
elif [[ ! "$firstinteger" =~ [0-9] ]] || [[ ! "$secondinteger" =~ [0-9] ]]; then #Verify the last two parameters are valid integers
	echo "One or two are string"
elif [[ "$operation" != "add" && "$operation" != "subtract" && "$operation" != "multiply" && "$operation" != "divide" ]]; then #Verify that the operation is one of the allowed
	echo "You don't indicate a correct operation"  
elif [[ "$operation" == "divide" ]]; then #Verify the operator is divide
	if [ "$secondinteger" -eq 0 ]; then #Verify if the 3 parameter is a 0
		echo "The second integer can't be a 0"
	else
		resultado=$(("$firstinteger" / "$secondinteger")) #make the divide
		echo "El resultado es: $resultado"	
	fi
elif [[ "$operation" == "add" ]]; then #verify if the operator is add
	resultado=$(("$firstinteger" + "$secondinteger")) #make the add
	echo "El resultado es: $resultado" 
elif [[ "$operation" == "subtract" ]]; then #verify if the operator is subtract
        resultado=$(("$firstinteger" - "$secondinteger")) #make the subtract
        echo "El resultado es: $resultado"  
else 
	resultado=$(("$firstinteger" * "$secondinteger")) #make the muliply
        echo "El resultado es: $resultado"  
fi
