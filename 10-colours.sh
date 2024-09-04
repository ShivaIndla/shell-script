#!bin/bash

echo "============================***========================"

echo "running $0"

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
RED="\e[31m"
GREEN="\e[32m"
NORMAL="\e[0m"


VALIDATE(){
    if [ $1 -ne 0 ]
        then
         echo -e "$2 ....is $RED fail $NORMAL"
         exit 1
        else
        echo -e "$2 ...is $GREEN success $NORMAL"
    fi
}

if [ $USERID -ne 0 ]
    then
        echo "Please run this ' $0 ' with root access."
        exit 1  # Manually exit if error comes
    else
        echo "You are SUPER user"
fi    

dnf install mysql -y
VALIDATE $? "Installing mysql" &>>$LOGFILE



dnf install gitt -y
VALIDATE $? "Installing git" &>>$LOGFILE

dnf install dockerr -y
VALIDATE $? "Installing docker" &>>$LOGFILE
