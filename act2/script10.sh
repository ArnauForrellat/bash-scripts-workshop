#!/bin/bash
#Made by ArnauForrellat
#Design a script that receives as parameters the name of a Wireshark capture file (in TXT or CSV format) and the name of a protocol (e.g. HTTP, TCP, UDP, etc.). The script must..:
#Check if the file exists and if it has a .txt or .csv extension.
#If everything is correct, count the lines that contain the name of the protocol indicated by the user (without distinguishing uppercase/lowercase letters).
#NOTE: If any validation fails, finish the execution of the script and display a specific error message. If there is no match at protocol search, display a message, too.
echo "Enter the name of wireshark capture file"
read wireshark

echo "Enter the protocol you want to serch"
read protocol

if [ -e "$wireshark" ]; then #verify if the file exist
	if [[ ${wireshark##*.} = "txt" || ${wireshark##*.} = "csv" ]]; then #verify if the file has a csv or txt extension
		total=$(grep -i "$protocol" "$wireshark" | wc -l) #find the lines wehre is the protocol
		if [ "$total" = "0" ];then #verify if there is 0 to display an error
			echo "The indicated protocol was not found"
		else		
			echo "A total of $total linens have been found"
		fi
	else
		echo "The file isn't csv or txt"
	fi
else
	echo "The file doesn't exist"
fi
