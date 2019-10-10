#backup /var/log at Friday
#name log-time.tar.gz
###########################
#!/bin/bash
if [ ! -f /var/log ];then
	mkdir /var/log
fi
find /var/log/ -name "*.tar.gz" -mtime +7 -exec rm -rf {} \;
tar zcvf log-`date +%Y%m%d`.tar.gz /var/log  
