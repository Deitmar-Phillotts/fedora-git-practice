#!/bin/bash

count=5
while [ $count -gt 0 ]
do
    echo "System reboot in $count seconds ..."
    count=$((count-1))
    sleep 1
done
echo "Blast off!"
