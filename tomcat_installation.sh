#!/bin/bash
apt update 
sleep 10 
apt install -y tomcat9 tomcat9-admin
sleep 15
sed -i 's/8080/9090/g' /etc/tomcat9/server.xml
systemctl restart tomcat9 
sleep 10 


