#!/bin/bash

#get list of VMs from qm list
qm list > vmlist.csv

#remove leading spaces from qm list command
#replace spaces with commas
#remove extra commas and remove comma at end of line
sed -i -e 's/^\s*//' vmlist.csv
sed -i 's/ /,/g' vmlist.csv
sed -i -e 's/,\+/,/g' vmlist.csv -e 's/,$//' vmlist.csv