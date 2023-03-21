#!/bin/bash
# iterate through all the files in a directory
for file in /home/rich/.* /home/rich/badtest
do
if [ -d "$file" ]
then
echo "$file is a directory"
elif [ -f "$file" ]
then
echo "$file is a file"
else
 echo "$file doesn't exist"
fi
done
