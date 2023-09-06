#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root user access"
    exit 1
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "Installation of mysql is error"
else
    echo "Installation of mysql is success"
fi

yum install postfix -y

if [ $? -ne 0 ]
then 
    echo "Installation of postfix is error"
else
    echo "Installation of postfix is success"
fi

