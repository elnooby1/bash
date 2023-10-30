#!/bin/bash
echo "enter username you want to added "
read -p "enter user name :**> " username

x=$(cat /etc/passwd |grep -w  $username |cut -d ":" -f 1 )

#if user not exsist#### 

if [ "$x" != "$username" ] 
then 
useradd $username
echo "enter passwd for $username  :**>>  "
passwd $username --stdin
echo "user $username  added succefully"
r=$(cat /etc/passwd |grep -w  $username)
echo "user info is equal :**>> $r "
 
elif [ "$x" = "$username" ]
then 
echo "user $username  is  exist "
else 
echo "invalide input "
fi

