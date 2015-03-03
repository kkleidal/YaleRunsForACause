#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
# If SQL Port Exposed:
# sudo docker run -d -p 8080:80 -p 3306:3306 --volume "$DIR/app:/app" kkleidal/lamp
# If SQL Port Not Exposed:
if [ -e "$DIR/container.id" ]; then
    CID=$(cat "$DIR/container.id")
    >&2 echo "Docker already running in container: $CID"
else
    sudo docker run -d -p "0.0.0.0:8080:80" --volume "$DIR/app:/app" kkleidal/lamp > "$DIR/container.id"
fi
