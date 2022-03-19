#! /bin/bash

wget -O - https://download.docker.com/linux/ubuntu/gpg > ./docker.key
gpg --no-default-keyring --keyring ./docker.gpg --import ./docker.key
gpg --no-default-keyring --keyring ./docker.gpg --export > ./docker-archive-keyring.gpg
sudo mv ./docker-archive-keyring.gpg /etc/apt/trusted.gpg.d/
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce -y
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo systemctl start docker
sudo docker run -d --name test-tomcat-server -p 8090:8080 tomcat:latest
