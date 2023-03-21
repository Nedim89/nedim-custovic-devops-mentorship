#!/bin/bash

if [ $# -ne 2 ]
then
 echo
 echo Usage: test9.sh a b
else
 total=$[ $1 + $2 ]
 echo
 echo The total is $total
fi
