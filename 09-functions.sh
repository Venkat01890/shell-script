#!/bin/bash

USERID=$(id -u)
# This function should validate the previous command and inform the user whether it is success or failure
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is error"
    else
        echo "$2 is success"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root user access"
    exit 1
fi

yum install mysql -y

VALIDATE $? "Installation of MySQL"

yum install postfix -y

VALIDATE $? "Installation of postfix"




