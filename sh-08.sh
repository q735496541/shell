#!/bin/bash
#脚本生成一个 100 以内的随机数，提示用户猜数字，根据用户的输入，提示用户猜对了，猜小了或猜大了，直至用户猜对脚本结束。
Num=$((RANDOM%100+1))
while :
do
read -p "计算机生成了一个 1-100 的随机数，你猜:" Chai
	if [ $Chai -le 100 ];then
		if [ $Num -eq $Chai ];then
        		echo "you are right"
			exit
			elif [ $Num -gt $Chai ];then
        	 	echo "you are small"
		else 
			echo "you are big"
   		fi
	else
		echo "please input number 1-100"
	fi
done
