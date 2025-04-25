#!/bin/bash
#Made by ArnauForrellat
#Design a script that receives the path of a file and indicates whether it exists. If the file exists, the script should The script should.. :
#Display its file type (text, binary, or unknown, depending on the file command).
#Indicate whether the file is readable, writable, and/or executable.
#NOTE: If the file does not exist, an error message should be displayed and if no parameters or more than one have been passed, a message about correct usage should be displayed.

echo "Indicate a path of a file"
read file # I take a parameter

if [ -e "$file" ]; then # The file exist
	echo ${file##*.} #Show the extension
	[ -r "$file" ] && echo "$file is readble"
	[ -w "$file" ] && echo "$file is writable"
	[ -x "$file" ] && echo "$file is executable"
else
	if [ -z "$file" ]; then 
		echo "You don't entered nothing"
	elif [ -e $2 ]; then
		echo "You put more than 1 parameter"
	elif [ ! -e "$file" ]; then 
		echo "The file doesn't exist"
	fi
fi

