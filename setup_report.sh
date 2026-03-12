#!/bin/bash

# Topic: Variables & Environment

USER_NAME=$USER
HOME_DIR=$HOME
OS_TYPE=$(cat /etc/fedora-release)

echo "Scanning system for: $USER_NAME"
echo "Your home directory is: $HOME_DIR"
echo "You are running: $OS_TYPE"

if [ -f "system_id.log" ]; then
    echo "Log file created successfully."
else
    echo "Error: Log file missing!"
fi

