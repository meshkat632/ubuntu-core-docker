#!/bin/sh

set -e # Exit script immediately on first error.
set -x # Print commands and their arguments as they are executed.

service docker stop

echo 'export http_proxy=http://proxyUserName:proxyUserPassword@bluecoat.media-saturn.com:80/' | sudo tee -a /etc/default/docker
echo 'export https_proxy=http://proxyUserName:proxyUserPassword@bluecoat.media-saturn.com:80/' | sudo tee -a /etc/default/docker

usermod -aG docker ${USER}
service docker restart
docker run hello-world

wget -o /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.20.1/docker-compose-`uname -s`-`uname -m`
#-o /usr/local/bin/docker-compose
#chmod +x /usr/local/bin/docker-compose
#docker-compose --version