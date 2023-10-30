#!/bin/bash

echo "enter username you want to enable "

read -p "enter user name :**> " username

x=$(cat /etc/passwd |grep -w  $username |cut -d ":" -f 1 )

#if user  exsist#### 

if [ "$x" = "$username" ] 
then 
#if you want take passwd outo enable  
#1#pass=$(openssl rand -base64 8 )
echo "enter password "
passwd $username --stdin  #2#echo $pass --stdin
echo "user enabled succefully"
#if user not exist 
elif [ "$x" != "$username" ]
then 
echo "user not exisx "
else 
echo "invalide input "
fi


