#!/bin/bash

USERID=$(id -u)
RED="\e[31m"
GREEN="\e[32m"
NORAML="\e[0m"

if [ $USERID -ne 0 ]
then
    echo "Please run this script as root access"
    exit 1
else
    echo "You are super user."
fi

for i in $@
do
    echo -e "installing of: $GREEN $i $NORAML is done"
done