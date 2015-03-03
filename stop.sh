#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
FILE="$DIR/container.id" 
if [ -e $FILE ]; then
    CID=$(cat $FILE)
    sudo docker stop $CID
    rm "$DIR/container.id"
else
     >&2 echo "No record of docker container"
fi
