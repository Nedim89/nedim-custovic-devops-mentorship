#!/bin/bash

tempfile=test22file

echo "This is the start of the test" | tee $tempfile
echo "This is the second line of he test" | tee -a $tempfile
echo "This is the end of the test" | tee -a $tempfile
