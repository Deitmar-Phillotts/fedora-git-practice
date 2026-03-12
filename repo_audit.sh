#!/bin/bash

# Our mission: Audit file types and permissions

echo "---- STARTING REPOSITORY AUDIT ----"

# Function to count files
count_files() {
    echo "Finding all $1 files ..."
    find . -name "*.$1" | wc -l
}

echo -n "Number of Shell Scripts: "
count_files "sh"

echo -n "Number of Text Files: "
count_files "txt"

echo "--- SEARCHING FOR SPECIAL PERMISSIONS ---"
# Find any file with SUID or SGID (the 4 or 2 in the thousands place)
find . -perm /6000 -type f

echo "--- AUDIT COMPLETE ---"
