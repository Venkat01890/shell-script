#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is error"
    else
        echo "$2 is success"
    fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root user access"
    exit 1
fi

yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installation of MySQL"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installation of postfix"




