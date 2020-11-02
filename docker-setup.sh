#!/bin/bash
# install
# rm /etc/yum.repos.d/docker-ce.repo # if you have already tried in the wrong way
# amazon-linux-extras install docker

# # enable on boot and start daemon

# systemctl enable docker
# systemctl start docker

# # correct permissions
# usermod -a -G docker $USER
# newgrp docker
# docker ps
amazon-linux-extras install docker
yum -y install docker
service docker start
usermod -a -G docker ec2-user
yum -y install git
git version
curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose version
yum -y install java-1.8.0-openjdk
yum -y install java-1.8.0-openjdk-devel
# yum install -y python3
# pip3 install docker
