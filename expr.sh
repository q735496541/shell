#!/bin/bash
#1-1001奇数相加
int=1
intt=0
while (( $int <= 1001 ))
do 
	intt=`expr $int + $intt`
	int=`expr $int + 2`
done
echo $intt
