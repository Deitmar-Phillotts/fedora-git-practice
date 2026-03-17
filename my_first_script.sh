# The Shebang is needed at the beginning of every script

#!/bin/bash

# Creating a variable
NAME="Deitmar"
# no space around the = sign

# Part 1: Interaction
# Ask the user for their name
echo -n "What is your name? "
read USER_NAME

# Ask for their favorite Linux command
echo -n "What is your favorite Linux Command? "
read FAV_COMMAND

# Part 2: Branching Logic
if [ "$FAV_COMMAND" == "ls" ]
then
    echo "Excellent choice, $USER_NAME! 'ls' is essential for viewing files."
else
    echo "That is a good one too, $USER_NAME. I personally like 'ls' better!"
fi

echo "Nice to meet you, $USER_NAME! I see you like using $FAV_COMMAND."
