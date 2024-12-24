#!/bin/bash
sudo apt update 
sleep 10 
sudo apt install -y tomcat9 tomcat9-admin
sleep 15
sudo sed -i 's/8080/9090/g' /etc/tomcat9/server.xml
sudo systemctl restart tomcat9 
sleep 10 


