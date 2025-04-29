#!/bin/bash
#Made by ArnauForrellat
#Design a script that receives the path of a file and indicates whether it is a directory or a file and, in case it’s a file, it must be shown its extension.
echo "Put a path of a file or directory"
read file

if [ -d "$file" ]; then #verify if it's a directory
	echo "Its a directory"

elif [ -f "$file" ]; then #verify if it's a file
	extension=${file##*.} #take only the extension
	echo "It's a file with the extension $extension"
fi
