#Install and deploy LAMP using yum
#You need to configure the yum source
#!/bin/bash
yum -y install httpd 
yum -y install mariadb mariadb-server mariadb-devel
yum -y install php-fpm php php-mysql
systemctl start httpd
systemctl start mariadb
systemctl start php
systemctl enable httpd
systemctl enable mariadb
systemctl enable php

