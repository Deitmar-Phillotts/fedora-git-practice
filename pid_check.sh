#!/bin/bash
#============================================================
# SCRIPT NAME : pid_check.sh
# DESCRIPTION : Checks if a PID exists in the /proc directory.
#============================================================

echo -n "Enter a PID to check: "
read CHECK_PID

# Using the if construct to check if the directory exists
# -d tests if a directory exists 

if [ -d "/proc/$CHECK_PID" ]
then
    echo "Process $CHECK_PID is currently running."

# Extracting the command name from the 'comm' file inside the PID folder.
# We use redirection to 'feed' the file to cat
    PROCESS_NAME=$(cat "/proc/$CHECK_PID/comm")
    echo "The command name is: $PROCESS_NAME"
else
    echo "Process $CHECK_PID is NOT active or found in /proc."
fi
