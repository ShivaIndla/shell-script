#!/bin/bash

echo "All variables are: $@" #(Print all possible values like *) #sh 06-special-vars.sh aws devops
echo "No of variables passed: $#"
echo "Script name: $0"  #(prints the script name)
echo "Present working directory: $PWD"
echo "Home directory of user: $HOME"
echo "Which user is running this script is: $USER"
echo "Host name: $HOSTNAME"
echo "PID of current script: $$"