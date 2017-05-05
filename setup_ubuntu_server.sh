#!/bin/sh
#
# Simply execute this script to setup the full toolchain:
#
# curl -sSL https://github.com/adarnois/docker-ci-tool-stack/master/setup_ubuntu_server.sh | bash -s
#
# Prerequisites:
# - Docker CE 2017.04 & Docker Compose 1.13.0

echo "Checkout Git Repository"
git clone git@github.com:adarnois/docker-ci-tool-stack.git
cd docker-ci-tool-stack

# Creating /opt/jenkins dir and modify rights for allowing Docker writing inside
# the shared volume
echo "Creating /opt/jenkins dir and change rights..."
mkdir /opt/jenkins
chown -R 1000:1000 /opt/jenkins

echo "Startup Docker Compose"
docker-compose up
