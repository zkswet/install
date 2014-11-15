#!/bin/bash
clear
#user name
read -p 'please input user  name for wordpress, default wordpress ' db_user
[ -z $db_user ] && db_user=wordpress
sed -i "s@^define('DB_USER'.*@define('DB_USER', '$db_user')@" wp-config.php
#db name
read -p 'please input database name, default wordpress ' db_name
[ -z $db_name ] && db_name=wordpress
sed -i "s@^define('DB_NAME'.*@define('DB_NAME', '$db_name')@" wp-config.php
#db passwd
while :
do
        echo -e "\033[31mplease input wordpress database password\033[0m"
        read -s  passwd
        [ -z $passwd ] && echo 'empty?' || break
done
sed -i "s@^define('DB_PASSWORD'.*@define('DB_PASSWORD', '$passwd')@" wp-config.php
#echo $db_user $db_name $passwd
#cat  wp-config.php | grep define
