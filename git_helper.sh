#!/bin/bash

# 1. Define the Function

sync_to_github() {
    echo "--- Starting Sync for: $1 ---"
    git add "$1"
    git commit -m "Updated $1 via git_helper"
    git push
    echo "--- $1 is now live on Github ! ---"
}

# 2. Main Script Logic

echo "Welcome to your Git helper, Deitmar."

while true
do
    echo -e "\nEnter a filename to sync (or type 'exit' to quit): \c"
    read FILE

    if [ "$FILE" = "exit" ]; then
        echo "Goodbye!"
        break
    elif [ -f "$FILE" ]; then
        # 3. Call the function and pass the filename as an assignment
        sync_to_github "$FILE"
    else
        echo "Error: $FILE does not exist in this directory."
    fi
done
