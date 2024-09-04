#!bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "Exit status: $1"
    echo "What are you doing: $2"
    echo "User is : $3"
    echo "Home Dir is : "
}

if [ $USERID -ne 0 ]
    then
        echo "Please run this ' $0 ' with root access."
        exit 1  # Manually exit if error comes
    else
        echo "You are SUPER user"
fi    

dnf install mysql -y
VALIDATE $? "Installing mysql" 


dnf install git -y
VALIDATE $? "Installing git" $USER $HOME

echo "is script continuing"