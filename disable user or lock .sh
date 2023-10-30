#!/bin/bash

echo "enter username you want to lock "

read -p "enter user name :**> " username

x=$(cat /etc/passwd |grep -w  $username |cut -d ":" -f 1 )

#if user not exsist#### 

if [ "$x" = "$username" ] 
then 
usermod -L $username
echo "user locked succefully"

elif [ "$x" != "$username" ]
then 
echo "user not exist "
else 
echo "invalide input "
fi


