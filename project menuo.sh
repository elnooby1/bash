#!/bin/bash
#check if the user root or not
if [ "$EUID" -ne 0 ]
then 
echo "Please run as root"
fi
menu=( "Adduser" "Edit User Login Name And Uid" "Remove User" "Remove User Whit Data" "Disable User" "Enable User"  "Add Group" "Remove Group"
 "Add User To Group" "Remove User From Group" ">List All Users" "View User Info" "Exit" )

ps3='project bash script '
select choice in  "${menu[@]}"
do
case $choice in 
"Adduser" ) source /home/elnooby/proj/adduser ;;
"Edit User Login Name And Uid") source /home/elnooby/proj/edit_user ;;
"Remove User") source /home/elnooby/proj/delete_user ;;
"Remove User Whit Data" ) source /home/elnooby/proj/delet_user_and_data ;;
"Disable User" ) source /home/elnooby/proj/disable_user ;;
"Enable User" ) source /home/elnooby/proj/enable_user ;;
"Add Group" ) source /home/elnooby/proj/addgroup ;;
"Remove Group" ) source /home/elnooby/proj/removegroup ;;
"Add User To Group" ) source /home/elnooby/proj/add_user_to_group;;
"Remove User From Group" ) source /home/elnooby/proj/remove_user_from_group;;
"List All Users" ) source /home/elnooby/proj/list_all_users ;;
"View User Info") source /home/elnooby/proj/user_info ;;
"Exit" ) break ;;
*) echo "invalide $choice $REPLY" ;;

esac
 
done
