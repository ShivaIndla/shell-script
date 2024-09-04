#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
    then
        echo "Please run this " $0 " with root access."
        exit 1
    else
        echo "You are SUPER user"
fi    
dnf install mysql -y