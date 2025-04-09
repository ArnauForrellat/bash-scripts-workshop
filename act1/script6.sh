#!/bin/bash
#Made by ArnauForrellat
#Create a script that takes multiple arguments and demonstrates the difference between using $* and $@. Show the output both inside and outside of double quotes ("").
# execute and explain of $*
echo $*
echo "$*"
echo "All positional parameters that are displayed as a string"
# execute and explain $@
echo $@
echo "$@"
echo "Is the same as first but as a list one at a time "


