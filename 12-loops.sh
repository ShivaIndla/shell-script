#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script as root access"
    exit 1
else
    echo"You are super user"
fi

for i in $@
do
    echo "installing of: $i is done"
done