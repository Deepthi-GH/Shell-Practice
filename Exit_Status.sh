#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ] 
then
    echo "error::please run this script with root privilige"
fi
dnf install mysql -y
if [ $? -ne 0 ] 
then
    echo "error::mysql installation failed"
else
    echo "mysql installation is success"
fi    

