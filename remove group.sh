#!/bin/bash

echo "enter groupname you want to delete "

read -p "enter group name :**> "  groupname

x=$(cat /etc/group |grep -w  $groupname |cut -d ":" -f 1 )

#if group  exsist#### 

if [ "$x" = "$groupname" ] 
then 
groupdel $groupname
echo "group removed  succefully"
##check resoult if check is empty your ps is succesfully 
r=$(cat /etc/group |grep -w $groupname)
echo "check resoult :**>> $r"
elif [ "$x" != "$groupname" ]
then 
echo "group is exist "
else 
echo "invalide input "
fi



