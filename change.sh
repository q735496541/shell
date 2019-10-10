#!/bin/bash
#更改root下的.doc为.jpg
filename=`ls /root/* |grep ".doc"`
for i in $filename
do
     mv $i ${i}.jpg
done
