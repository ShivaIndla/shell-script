#!/bin/bash

USERID=$(id -u)
RED="\e[31m"
GREEN="\e[32m"
NORAML="\e[0m"

VALIDATE(){

    if [ $1 -eq 0 ]
    then
        echo " $2 is allready installed and skipping this"
    else

        echo "installing $2 package"
        dnf install $2 -y
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
    echo -e "Package to install: $GREEN $i $NORAML"

    dnf list installed $i
    VALIDATE $? $i
done