#!/bin/bash

echo "Waiting for 'task_complete.txt' to be created..."

# Use UNTIL to wait for the file

until [ -f "task_complete.txt" ]
do
    sleep 3
done

echo "File detected! Syncing to GitHub ..."
git add task_complete.txt
git commit -m "Automated commit: Task file detected"
git push origin main
