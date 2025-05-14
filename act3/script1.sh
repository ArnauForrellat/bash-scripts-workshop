#!/bin/bash
#Made by ArnauForrellat
#Write a script that removes comments (lines starting with # until the end of the line) from a file. Once the comments are removed, ask the user if a given word/phrase exists in the file. Then, prompt the user to add a sentence to the end of the file (this step is mandatory).
echo "Enter the name of the file"
read file

if [ ! -f "$file" ]; then #Verify if the file exist
	echo "The file doesn't exist" 
else
	for lineas in "${file[@]}"; do  #Separte the file in a diferents lines
		sed -i '/^#/d' "$lineas" #Eliminate the lines that starts with #
	done

	echo "Enter a word/phrase"
        read word

        if grep -q "$word" "$file"; then # Verify if the word or phrase exist inside the file
        	echo "The word exist in the file"
        else
        	echo "The word didn't exist in the file"
	fi
        echo "Enter a sentence to put it on the end of a file" 
        read sentence

	echo "$sentence" >> "$file" # I put the sentence in the end of the file
fi
