#!/bin/bash

echo "enter username you want to delete "

read -p "enter user name :**> " username

x=$(cat /etc/passwd |grep -w  $username |cut -d ":" -f 1 )

#if user not exsist#### 

if [ "$x" = "$username" ]
then
userdel $username
echo "user delete succefully"
##check resoult if empty your ps is succesfully and if not empty your ps is not succesfully 
r=$(cat /etc/passwd |grep -B 2 -A 2 $username)

echo "check resoult :**> $r"
elif [ "$x" != "$username" ]
then
echo "user not exist "
else
echo "invalide input "
fi

