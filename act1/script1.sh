#!/bin/bash
#Made by ArnauForrellat
#Create a script that displays the main global variables and all the Shell arguments, the value returned by the last command executed and the PID of the current Shell.

#Global
echo $HOME
echo $PATH
echo $SHELL
echo $USER
echo $PWD

#Arguments
echo $@
#return value
echo $?

#PID
echo $$
