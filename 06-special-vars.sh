#!/bin/bash

echo "Script name is: $0"  #(prints the script name)
echo "All variables are: $@" #(Print all possible values like *) #sh 06-special-vars.sh aws devops
echo "No of variables passed: $#"
echo "Present working directory is: $PWD"
echo "Home directory of user: $HOME"
echo "Which user is running this script is: $USER"
echo "Host name is: $HOSTNAME"
echo "PID of current script is: $$"
echo "To check the exit status of preveous command is: $?"  # if the last command is success or not(if 0 means succss, other than 0 means fails)