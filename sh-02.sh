#check ip
###########
#!/bin/bash
read -p "Please input your IP:" Ip
ping -c1 $Ip >/dev/null && echo "$Ip is up" || echo "$Ip is down"
