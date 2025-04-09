#!/bin/bash
#Made by ArnauForrellat
#Create a Bash script that displays the following information:
echo "Dime una variable global"
read global
echo ${!global}
echo $@
echo $?
echo $$
