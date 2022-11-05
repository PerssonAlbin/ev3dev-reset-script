#!/bin/bash

if [ -z "$1" ]
then
    echo "No argument was given:"
    echo "The name of the robot is required as argument"
    echo "Using default value: ev3dev"
    robot="ev3dev"
else
    robot=$1
fi

sshpass -p maker ssh robot@$robot.local "rm -rf *"


sleep 5

sshpass -p maker ssh robot@$robot.local "bash -s" < reset_bt.sh

# paired-devices