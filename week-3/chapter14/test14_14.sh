#!/bin/bash

#Ova skripta zanemaruje prva tri poslana argumenta

echo "Originalno poslani paramteri $*"
shift 2
echo "Novi \$1 parametar nakon shifta $1"
