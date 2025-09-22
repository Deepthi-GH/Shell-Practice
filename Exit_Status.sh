#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ] 
then
    echo "error::please run this script with root priviliges"
    exit 1
fi
dnf install mysql -y
if [ $? -ne 0 ] 
then
    echo "error::mysql installation failed"
    exit 1
else
    echo "mysql installation is success"
fi    

