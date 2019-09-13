#!/bin/bash
#新增硬盘后,使用此脚本自动发现新增硬盘,不需要重启服务器
sischostnum=$(ls -la /sys/class/scsi_host/host* | wc -l)
for ((i=0;i<${sischostnum};i++))
do
	echo "- - -" > /sys/class/scsi_host/host${i}/scan
done
