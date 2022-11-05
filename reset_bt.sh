#!/bin/bash
echo "Starting removal of bluetooth devices"
for device in $(bluetoothctl devices  | grep -o "[[:xdigit:]:]\{8,17\}"); do
    echo "removing bluetooth device: $device | $(bluetoothctl remove $device)"
done