#!/bin/bash

DISK_USAGE=$(df -hT|grep -v Filesystem)

DISK_THRESHOLD=2 #in projects we keep it as 75
IP_ADDRESS=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)
MESSAGE=""

 while IFS= read -r line
 do 
        USED=$(echo $line |awk '{ print $6 }'|cut -d% -f1)
        MOUNT_PATH=$(echo $line|awk '{ print $7 }')
   
    if [ $USED -ge $DISK_THRESHOLD ]
    then 
       
      MESSAGE+="High usage on below paths: $MOUNT_PATH $USED% <br>" 
   fi

done<<<$DISK_USAGE

echo -e "Message Body:\n$MESSAGE"
MESSAGE_BODY=$(echo -e "$MESSAGE" | sed 's/$/<br>/')

sh Mail.sh "deepthi.devops9@gmail.com"  "High Disk Usage Alert"  "High Disk Usage" "$MESSAGE" "$IP_ADDRESS" "DevOps Team"

# TO_ADDRESS=$1
# SUBJECT=$2
# ALERT_TYPE=$3
# MESSAGE_BODY=$4
# IP_ADDRESS=$5