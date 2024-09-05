#!/bin/bash

USERID=$(id -u)
RED="\e[31m"
GREEN="\e[32m"
Yellow="\e[33m"
NORMAL="\e[0m"

VALIDATE(){

    if [ $1 -eq 0 ]
    then
        echo -e " $GREEN $2 $NORAML is allready installed $2 $Yellow ....Skipping $NORMAL"
    else
        echo "installing $2 "
        dnf install $2 -y
        if [ $? -eq 0 ]
        then 
            echo -e "installing $Yellow $2 $NORAML is $GREEN ....Success $NORMAL"
        else
            echo -e "$RED error Please check the command $NORMAL" 

            echo "==================***=========================="
        fi
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script as root access"
    exit 1
else
    echo "You are super user."
fi


for i in $@
do
    echo -e "Package is about to install: $GREEN $i $NORAML"

    dnf list installed $i
    VALIDATE $? $i
done