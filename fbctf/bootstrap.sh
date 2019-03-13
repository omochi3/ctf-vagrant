#!/bin/bash

# Add docker key and repository
apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list

# Install docker and git
apt-get update -q
apt-get upgrade -qy
apt-get install -qy docker-engine git

# Setup fbctf
git clone https://github.com/facebook/fbctf
cd fbctf
. ./extra/lib.sh
quick_setup start_docker prod
