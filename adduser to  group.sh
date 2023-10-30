#!/bin/bash

echo "enter username and group name "

read -p "enter user you want to add to group :**> " username
read -p "enter group you want to add user in it :**>  " groupname
x=$(cat /etc/passwd |grep -w  $username |cut -d ":" -f1)
y=$(cat /etc/group |grep -w  $groupname |cut -d ":" -f1)

#if user and group  exsist#### 
if [ "$x" != "$username" ]  && [ "$y" != "$groupname" ]
then 
echo " user or group  not exsist "

elif  [ "$x" = "$username" ] && [ "$y" = "$groupname" ]
then
 usermod -a -G  $groupname  $username

echo "user add in group  has  succefully "
##if you want to check 
#echo mems on group  on the next line 
r=$(cat /etc/group |grep -w $groupname )
echo "check resoult :**>> $r" 
else 
echo "invalide input"
fi

