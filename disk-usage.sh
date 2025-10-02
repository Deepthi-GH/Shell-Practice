#!/bin/bash

DISK_USAGE=$(df -hT|grep -v Filesystem |awk '{ print $6F }'|cut -d% -f1)
PATH=$( df -hT|grep -v Filesystem|awk '{ print $7F }')
DISK_THRESHOLD=2 #in projects we keep it as 75


 while IFS= read -r line
 do 
    if [ $DISK_USAGE -ge  $DISK_THRESHOLD ]
    then
        echo "High usage on $PATH $DISK_USAGE"
        exit 1
   fi

done<<<$DISK_USAGE