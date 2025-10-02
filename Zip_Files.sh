#!/bin/bash

USERID=$(id-u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"  #/var/log/shell-script/Zip_Files.log

mkdir -p $LOGS_FOLDER
echo "script started executed at: $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ] 
    then
    echo "error::please run this script with root priviliges"
    exit 1 #failure is other than zero
fi

#count=$#
SOURCE_DIR="/home/ec2-user/source_dir"
DEST_DIR="/home/ec2-user/dest_dir"
DAYS=14

usage() {
    echo "please pass atleast 2 arguments"
    exit 1
}

if [ $# -lt 2 ]; then
    usage
fi

if [ ! -d $SOURCE_DIR ]; then
    echo "given source dir does not exist"
    exit 1
fi

if [ ! -d $DEST_DIR ]; then
    echo  -e "$R given dest dir does not exist $N"
    exit 1
fi

# Find files older than $DAYS and bigger than 1KB
FILES_TO_DELETE=$(find $SOURCE_DIR -type f -name "*.log" -mtime +$DAYS -size +1k)

if [ ! -z "$FILES_TO_DELETE" ]; then # -z checks empty or not
   echo " files found"
   TIME_STAMP=$(date +%F-%H-%M)
   ZIP_FILE_NAME="$DEST_DIR/app-logs-$TIME_STAMP.zip"
   echo "zip filename : $ZIP_FILE_NAME"
   echo $FILES_TO_DELETE | zip -@ -j "$ZIP_FILE_NAME" 

   if [ -f $ZIP_FILE_NAME ]
   then
        echo "suceessfully archieved"
        while IFS= read -r files_list 
        do
	        echo "files to be deleted:$files_list"
	        rm -rf $files_list
            echo "deleted the file :$files_list"

        done<<<$FILES_TO_DELETE
   else 
        echo -e "$R archive the files failure $N"
        exit 1
   fi    

else 
    echo  -e "No files to archive. $Y SKIPPING $N"
    exit 0
fi
