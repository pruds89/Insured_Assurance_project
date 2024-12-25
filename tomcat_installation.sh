#!/bin/bash
apt update 
#sleep 10 
apt install -y tomcat9 tomcat9-admin
#sleep 15
sed -i 's/8080/9090/g' /etc/tomcat9/server.xml
sed -i 's/for java_version in 11 10 9 8/for java_version in 21 11 10 9 8/' /usr/libexec/tomcat9/tomcat-locate-java.sh
#systemctl restart tomcat9 
#sleep 10 


