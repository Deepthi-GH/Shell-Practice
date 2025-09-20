#!/bin/bash
x=$(date)
echo "today date is:$x" 
start_time=$(date +%s)

sleep 10
end_time=$(date +%s)
total_time=$(($start_time-$end_time))
echo "total time taken to execute a script  is:$total_time"