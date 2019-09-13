#!/bin/bash
#提示用户输入用户名和密码，脚本自动创建相应的账户及配置密码。如果用户不输入账户名，退出脚本；如果用户不输入密码，则统一使用默认的 123456 作为默认密码
read -p "pealse input username:" username
	if [ -z $username ];then
		exit
	fi
if [ id $username > /dev/null 2&>1 ];then
	echo "user is exists"
	exit 2
else 
	/usr/sbin/useradd $username
fi
read -p "please input password:" pass
pass=${pass:-123456}
echo "$pass" | passwd --stdin "$username"

