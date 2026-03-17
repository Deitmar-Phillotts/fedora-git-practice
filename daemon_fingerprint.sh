#!/bin/bash

# Ask the userwhich daemon to investigate
echo "Enter the name of the daemon (eg. crond, sshd, system): "
read DAEMON_NAME

# 1. Find the PID and TTY status
# We us ps -e to see terminal-less processes and 'grep' to filter
INFO=$(ps -eo pid,tty,user,comm | grep "$DAEMON_NAME" | grep "?" | head -n 1)

if [ -z "$INFO" ]; then
    echo "No daemon found with that name (or it's attached to a terminal)."
    exit 1
fi

PID=$(echo $INFO | awk '{print $1}')
USER=$(echo $INFO | awk '{print $3}')

echo "--- Daemon Found ---"
echo "PID: $PID"
echo "Owner: $USER"
echo "Terminal: UNATTACHED (?)"

# 2. Locate the log file
# Most Fedora daemons log to /var/log/messages or a specific file in /var/log/
echo "--- Recent Activity ---"
if [ -f "/var/log/$DAEMON_NAME.log" ]; then
    tail -n 5 "/var/log/$DAEMON_NAME.log"
else
    echo "No specific log found in /var/log/$DAEMON_NAME..."
    echo "Checking general system message for $DAEMON_NAME..."
    grep "$DAEMON_NAME" /var/log/messages | tail -n 5
fi

