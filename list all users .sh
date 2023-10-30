#!/bin/bash

###this script to list all users###
list=$(cat /etc/passwd |cut -d ":" -f 1)

echo "list of all users :**>> $list" 



