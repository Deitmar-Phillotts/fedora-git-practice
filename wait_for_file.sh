#!/bin/bash

until [ -f "secret.txt" ]
do
    echo "Searching for secret.txt ... still missing."
    sleep 2
done
echo "File found! Proceeding with Git upload."
