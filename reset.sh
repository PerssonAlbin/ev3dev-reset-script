#!/bin/bash

if [ -z "$1" ]
then
    echo "No argument was given:"
    echo "The name of the robot is required as argument"
    exit 0
fi

sshpass -p maker ssh robot@$1.local "rm -rf *"


sleep 5

sshpass -p maker ssh robot@$1.local "bluetoothctl"

# paired-devices