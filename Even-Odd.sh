#!/bin/bash
echo "please enter a number"
read NUMBER
if  [ $(($NUMBER % 2)) -eq 0 ] 
then
    echo "given no $NUMBER is an even no"
else  
    echo "given no $NUMBER is an odd no"
fi