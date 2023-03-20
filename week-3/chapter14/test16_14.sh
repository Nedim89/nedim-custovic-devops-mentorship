#!/bin/bash

while [ -n "$1" ]
do
 case "$1" in
  -a) echo "Found the -a option";;
  -b) echo "Found the -b option";;
  -c) echo "Found the -c option";;
  --) shift
      break;;
  *) echo "There is no this $1 option";;
 esac
 shift
done
#
count=1
for param in $@
do
 echo "Parameter #$count: $param"
 count=$[ $count + 1 ]
done

