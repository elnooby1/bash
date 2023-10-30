#!/bin/bash
echo "enter username you want to edit login name and uid "
read -p  "enter user name :**> "  username
read -p "enter new login name :**> " newname
read -p "enter new uid :**> "  newuid
x=$(grep $username /etc/passwd |cut -d ":" -f 1 )

#if user not exsist#### 

if [ "$x" != "$username" ]
then
echo " user not exsist "
elif  [ "$x" = "$username" ]
then
##check resoult
 usermod -l $newname  -u $newuid  $username
echo "user has new login name"  $newname  " succefully "
echo "user has new uid "  $newuid   " succefully "
##check resault 
r=$(cat /etc/passwd |grep $username)
echo "check resoult :**>>  $r"
else
echo "invalide input"
fi
