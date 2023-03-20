#!/bin/bash

read -n 1 -p "Do you want to continue [Y/N]? " answer

case $answer in
     Y | y) echo
     echo "fine, continue on...";;
     N | n) echo
     echo OK, goodbye
     exit;;
esac
echo "This is END"
