#!/bin/bash
#testing closing file descriptors

exec 3> test17file
echo "This is a test line of data" >&3

exec 3>&-

echo "This want work" >&3
