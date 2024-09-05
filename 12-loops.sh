#!/bin/bash

USERID=$(id -u)
PACKAGES=$@
RED="\e[31m"
GREEN="\e[32m"
Yellow="\e[33m"
NORMAL="\e[0m"

VALIDATE(){

    if [ $1 -eq 0 ]
    then
        echo -e " $GREEN $2  is allready installed  $Yellow ....Skipping $NORMAL"
        echo "==================***=========================="
    else
        echo "installing $2 "
        dnf install $2 -y
        if [ $? -eq 0 ]
        then 
            echo -e "Instalation of $Yellow $2 $NORMAL is $GREEN ....Success $NORMAL"
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


for pkg in $PACKAGES
do
    echo -e "Package is about to install: $GREEN $pkg $NORMAL"

    dnf list installed $pkg
    VALIDATE $? $pkg
done