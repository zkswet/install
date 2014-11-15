#!/bin/bash
# Author:  anthony <wuyugw AT gmail.com>
# Blog:  http://blog.zkswet.com

while :
do
        read -p 'do you want to install wordpress in your machine y/n ? ' choice
        [ -z $choice  ] || [ $choice == "n" ] && exit 1
        [ $choice == "y" ] && break
done
[ -d "/tmp/download/" ] && rm -rf /tmp/download
mkdir /tmp/download
cd /tmp/download
wget http://wordpress.org/latest.tar.gz
echo 'download finish'
tar -zxf latest.tar.gz
echo 'extract finish'
mv wordpress /home/wwwroot/default/blog
rm -rf /tmp/download
cd /home/wwwroot/default
chown www.www -R blog
echo ' --- list wwwroot dir ---'
ls

