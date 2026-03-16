#!/bin/bash

# Part 1: Environmental Variables [cite: 8]
LOGFILE="$HOME/cpu_usage.log"
TIMESTAMP=$(date) [cite: 15]

# Part 2: Sequential Logic - Identify intensive processes [cite: 151]
# We use 'ps' to find the top process by %CPU usage
TOP_PROCESS=$(ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 2 | tail -n 1)

# Part 3: Redirection - save the data to a log [cite: 4]
echo "$TIMESTAMP - Top Process: $TOP_PROCESS" >> "$LOGFILE"
