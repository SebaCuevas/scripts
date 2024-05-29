#!/bin/bash

#Installation of docker
sudo yum install docker -y

#Starting Docker Service
sudo service docker start
#Making docker autostart
sudo chkconfig docker on

#Installation of git cli
sudo yum install -y git



sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
# Fix permissions after download
sudo chmod +x /usr/local/bin/docker-compose
# Verify success
docker-compose version

#Reboot instance after installation
sudo reboot

