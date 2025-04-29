#!/bin/bash
#Made by ArnauForrellat
#Design a script that receives the path of a file and indicates the permissions it has (Write, Read, eXecute).
echo "Put a path of a file" 
read file #The path of the file

[ -r "$file" ] && echo "The file has a eXecution permisions" #Verify if the file has a read permision

[ -w "$file" ] && echo "The file has a Write permisions" #Verify if the file has write permision

[ -x "$file" ] && echo "The file has a eXecution permisions" #Verify if the file has a execution permision 
