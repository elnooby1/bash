#!/bin/bash

echo "enter username you want to delete "

read -p "enter user name :**> " username

x=$(cat /etc/passwd |grep -w  $username |cut -d ":" -f 1 )

#if user not exsist#### 

if [ "$x" = "$username" ] 
then
##user info 
echo "User info to $username "
uid=$(id -u $username)
pgid=$(id -g $username)
sgid=$(id -G $username)
hdir=$(cat /etc/passwd |grep -w elnooby |cut -d ":" -f 6 )
echo "Uid of $username  is equal $uid"
echo "Primare group id of $username is equal $pgid"
echo "Scondary group id of $username is equal $sgid"
echo "Home directory of $username is equal $hdir"
echo "            ## More info ## "
chage -l $username 

elif [ "$x" != "$username" ]
then 
echo "user not exist "
else 
echo "invalide input "
fi

