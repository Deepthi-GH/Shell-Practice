#!/bin/bash
set -e
 error(){
    echo "there is an error in $LINE_NO and command is $BASH_COMMAND"
 }

trap error err
 echo "hello world"
 afdgfdhgdhf #This is an error.shell sends ERR signal.
 echo "hi"