#!/bin/bash
#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ] 
then
    echo "error::please run this script with root priviliges"
    exit 1
fi
VALIDATE()
{
    if [ $1 -ne 0 ] 
then
    echo "error::$2 installation failed"
    exit 1
else
    echo "$2 installation is success"
fi    
}
dnf install mysql -y

VALIDATE $? "mysql"
dnf install nginx -y

VALIDATE $? "nginix"

dnf install python3 -y

VALIDATE $? "python"
    