#!/bin/bash

USERID=$(id -u)
# This function should validate the previous command and inform the user whether it is success or failure
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "Installation of mysql is error"
    else
        echo "Installation of mysql is success"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root user access"
    exit 1
fi

yum install postfix -y

VALIDATE $?

yum install postfix -y

VALIDATE $?




