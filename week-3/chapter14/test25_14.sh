#!/bin/bash

if read -t 5 -p "Unesite Vaše ime" ime
then
 echo "Zdravo $ime, dobrodošli u moju skriptu"
else
 echo
 echo "Žao mi je, isteklo vrijeme za unos!"
fi
