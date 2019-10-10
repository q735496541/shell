#create system user and password
################################
#!/bin/bash
cat<<eof
------------------------------------
Please input your user and password
-------------------------------------
eof

useradd $1
echo $2 | passwd --stdin $2
