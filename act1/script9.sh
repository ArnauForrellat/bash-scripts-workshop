#!/bin/bash
#Made by ArnauForrellat
#Read the following script and explain the output of each line and answer the questions:

#CRACK="oriolorioloriol"  


echo "The result of ##*ori is" ${CRACK##*ori} #Deletes everything up to the last time ori appears in the chain.
echo "The result of #*ori is" ${CRACK#*ori} #Eliminates everything up to the first time ori appears.
echo "The result of %%ol* is" ${CRACK%%ol*} #the command deletes everything from the last time ol appears until the end of ol
echo "The result of %ori* is" ${CRACK%ori*} #Eliminates everything from the first time ori appears until the end.

#What exactly do the ##, #, %%, and % operators do?
#The operator ## deletes the longest first match of a given pattern from a string.
#The operator # removes the sortest match form the start of string
#The operator %% removes the longest match from the end of string
#The operator % removes the shortest match from the end of string

#How can these techniques be useful in Bash scripts?
#Is useful parisng filenames, extrating values, cleaning up path, logs or strings and automation scripting.

#Try modifying the value of CRACK and observe how the output changes.
#CRACK="arnauorioloriol"
#The result of ##*ori is ol
#The result of #*ori is oloriol
#The result of %%ol* is arnauori
#The result of %ori* is arnauoriol

