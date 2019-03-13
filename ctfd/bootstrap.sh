#!/bin/sh

# Add docker key and repository
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list

# Install apache and docker
apt-get update -q
apt-get upgrade -qy
apt-get install -qy apache2 docker-engine

# Download and start docker image with CTFd
docker pull ctfd/ctfd
docker run --restart=always -d -p 8000:8000 --name ctfd ctfd/ctfd

# Put the relevant files in place
cp /tmp/ctfd/default.conf /etc/apache2/sites-available/000-default.conf

# Enable proxy modules in apache and restart
a2enmod proxy_http
systemctl restart apache2.service
