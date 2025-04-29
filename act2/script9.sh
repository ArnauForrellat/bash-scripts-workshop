#!/bin/bash
#Made by ArnauForrellat
#Design a script that receives the path of a directory and the name of the final tarball file.
#It must check if the directory exists and, actually, if it’s a directory. If not, an error message must be displayed.
#If everything is correct, compress it in .tar.gz format with the specified name.
#If the file with the given name already exists, ask the user for confirmation before overwriting it. If the user denies it, close the script and show a message.
echo "Put a path of a directory"
read directory

echo "Put the name of a tarball file"
read tarball

if [ -e "$directory" ] && [ -d "$directory" ]; then #verify if the directory exist and if it's a directory
	overwriting="yes" #I create a variable to know if the user wants to overwriting or not
	if [ -e "$tarball" ];then #verify if the tar exisit
		echo "The file $tarball exist, Do you want Overwriting (yes/no)"
		read exist
			if [ "$exist" = "no" ]; then #verify if the user wants to overwriting or no
				echo "The operation cancel"
				overwriting="no"
			fi
	fi
	if [ "$overwriting" = "yes" ]; then #Verifiy if the user want to overwriting the existen file or if not exist yet.
		tar -czf "$tarball" "$directory"		
	fi
else
	echo "The directory doesn't exist"
fi


