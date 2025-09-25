#!/bin/bash
set -e
# error(){
 #   echo "there is an error in $LINENO and command is $BASH_COMMAND"
# }

trap 'echo "there is an error in $LINENO and command is $BASH_COMMAND"' err
 echo "hello world"
 afdgfdhgdhf #This is an error.shell sends ERR signal.
 echo "hi"