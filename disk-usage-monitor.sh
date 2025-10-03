#!/bin/bash

DISK_USAGE=$(df -hT|grep -v Filesystem)

DISK_THRESHOLD=2 #in projects we keep it as 75


 while IFS= read -r line
 do 
        USED=$( $line |awk '{ print $6 }'|cut -d% -f1)
        Mount_PATH=$( $line|awk '{ print $7 }')
   
    if [ $USED -ge  $DISK_THRESHOLD ]
    then 
       
        echo  -e "High usage on below paths: \n $Mount_PATH $USED"
      
   fi

done<<<$DISK_USAGE