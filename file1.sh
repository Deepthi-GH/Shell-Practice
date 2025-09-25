#!/bin/bash
set -e
 error(){
    echo "there is an error!"
 }

trap error err
 echo "hello world"
 afdgfdhgdhf #This is an error.shell sends ERR signal.
 echo "hi"