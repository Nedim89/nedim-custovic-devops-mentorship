#!/bin/bash
# reading values from a file
IFS=$'\n'
file="states"
for state in $(cat $file)
do
echo "Visit beautiful $state"
done
