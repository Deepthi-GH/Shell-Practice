#!/bin/bash

DISK_USAGE=$(df -hT|grep -v Filesystem)

DISK_THRESHOLD=2 #in projects we keep it as 75


 while IFS= read -r line
 do 
   
    if [ $line -ge  $DISK_THRESHOLD ]
    then 
         USED=$( $line |awk '{ print $6 }'|cut -d% -f1)
         Mount_PATH=$( $line|awk '{ print $7 }')
        echo  -e "High usage on below paths: \n $Mount_PATH $USED"
        exit 1
   fi

done<<<$DISK_USAGE