#检测本机当前用户是否为超级管理员，如果是管理员，则使用 yum 安装 vsftpd，如果不是，则提示您非管理员
#!/bin/bash
if [ $USER == "root" ];then
	yum -y install vsftpd
	else 
	echo "You is not administrator" 
fi
