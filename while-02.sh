#!/bin/bash
#猜数字
num=$((RANDOM%10+1))
while : 
do
	read -p" 请输入要猜的数字(0-10)：" cai
	if [ $cai -le 10 ];then
		if [ $cai -gt $num ];then
			echo "你猜大了，请再试一次！"
		elif [ $cai -lt $num ];then
			echo "你猜小了，请再试一次！"
		else
			echo "恭喜你猜对了！"
			exit
		fi
	else
		echo "请输入要猜的数字0-10"
	fi
done
