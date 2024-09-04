#!bin/bash

echo "============================***========================"

echo "running $0"

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


VALIDATE(){
    if [ $1 -ne 0 ]
        then
         echo "$2 ....is fail"
         exit 1
        else
        echo "$2 ...is success"
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
VALIDATE $? "Installing mysql" 
&>>$LOGFILE


dnf install git -y
VALIDATE $? "Installing git"
&>>$LOGFILE