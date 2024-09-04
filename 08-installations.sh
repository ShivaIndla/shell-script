#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
    then
        echo "Please run this ' $0 ' with root access."
        exit 1  # Manually exit if error comes
    else
        echo "You are SUPER user"
fi    

dnf install mysql -y
if [ $? -ne 0 ]
    then
        echo "installing of mysql.....is fail"
        exit 1
    else
        echo "mysql is installed"
fi

dnf git install -y
if [ $? -ne 0 ]
    then
        echo "installing of git.....is fail"
        exit 1
    else
        echo "git is installed"
fi

echo "is script continuing"