#!/bin/bash
date =$(date)
echo "today date is:$date" 
start_time=$(DATE+%s)

SLEEP 10
end_time=$(DATE+%s)
total_time=$(($start_time-$end_time))
echo "total time taken to execute a script  is:$total_time