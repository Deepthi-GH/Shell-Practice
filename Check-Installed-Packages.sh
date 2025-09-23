#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m
N="\e[0m"

if [ $USERID -ne 0 ] 
then
    echo "error::please run this script with root priviliges"
    exit 1
fi
VALIDATE()
{
    if [ $1 -ne 0 ] 
then
    echo -e "error::$2 installation $R failed $N"
    exit 1
else
    echo -e "$2 installation is $Y success $N"
fi    
}
dnf list installed mysql 
if [ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "mysql installed already. $B SKIPPING $N"
fi
dnf list installed nginx
if [ $? -ne 0 ] 
then
    dnf install nginx -y
    VALIDATE $? "nginix"
else
echo -e "nginx installed already.$B SKIPPING $N"
fi
dnf list installed python3
if [ $? -ne 0 ]
then
    dnf install python3 -y
    VALIDATE $? "python"
else
    echo -e "python installed already.$B SKIPPING $N"
fi