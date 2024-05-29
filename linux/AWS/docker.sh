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

#Creating Docker group
sudo groupadd docker
#Adding ec2-user to the docker group.
sudo usermod -a -G docker ec2-user
sudo newgrp docker

echo "The system will be rebooted in 60 seconds..."
sleep 60

#Reboot instance after installation
sudo reboot

