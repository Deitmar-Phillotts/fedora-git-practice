#!/bin/bash

if [ "$PWD" == "$HOME" ]
then
    echo "You are currently in your home directory."
else
    echo "You are not in your home directory."
fi
