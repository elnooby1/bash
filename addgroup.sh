#!/bin/bash

echo "enter groupname you want to add "

read -p "enter group name :**> "  groupname

x=$(cat /etc/group |grep -w  $groupname |cut -d ":" -f 1 )

#if group  exsist#### 

if [ "$x" != "$groupname" ] 
then 
groupadd $groupname
echo "group add  succefully"
##check resoult print group name and group id 
r=$(cat /etc/group |grep -w $groupname)
echo "check resoult :**>> $r"
elif [ "$x" = "$groupname" ]
then 
echo "group is exist "
else 
echo "invalide input "
fi


