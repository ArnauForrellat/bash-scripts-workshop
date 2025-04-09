#!/bin/bash
#Made by ArnauForrellat
#Create a script that asks for a username and password. The password must not be visible while typing. Attention: Both the username and masked password must be displayed on a single line. 
echo "Put your username"
read username
echo "put your password"
read -s password
echo "User: $username", "Password: $password"
