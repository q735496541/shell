#!/bin/bash
#实时监控本机内存和硬盘剩余空间，剩余内存小于 500M、根分区剩余空间小于 1000M 时，发送报警邮件给root
Disk_size=$(df / | awk '/\// {print $4}')
Mem_size=$(free | awk '/Mem/ {print $4}')
while :
do
    if [ $Disk_size -lt 1024000 -a $Mem_size -lt 512000 ];then
    	mail -s Warning root <<EOF
    	Insufficient resources
EOF
    fi
done
