#!/bin/bash
# Change Password of mysqld

echo "Dumbass ! Why did you forget your bloody root password ? I'll save your ass this time, but DON'T COME BACK !"

stop mysql
sudo mysqld_safe --skip-grant-tables &
mysql -u root << EOF
use mysql;
update user set password=PASSWORD("$1") where User='root';
flush privileges;
quit
EOF
sleep 2
echo "Mysql root password changed to desired password"