#!/bin/sh

set -e # Exit script immediately on first error.
set -x # Print commands and their arguments as they are executed.

export https_proxy=http://proxyUserName:proxyUserPassword@bluecoat.media-saturn.com:80
export HTTPS_PROXY=http://proxyUserName:proxyUserPassword@bluecoat.media-saturn.com:80
export http_proxy=http://proxyUserName:proxyUserPassword@bluecoat.media-saturn.com:80
export HTTP_PROXY=http://proxyUserName:proxyUserPassword@bluecoat.media-saturn.com:80
export HTTPS_PROXY=http://proxyUserName:proxyUserPassword@bluecoat.media-saturn.com:80
export ftp_proxy=http://proxyUserName:proxyUserPassword@bluecoat.media-saturn.com:80
sudo cp /tmp/apt.conf /etc/apt/apt.conf
sudo cp /tmp/.curlrc /home/vagrant/.curlrc
sudo cp /tmp/.wgetrc /home/vagrant/.wgetrc
sudo cp /tmp/.wgetrc /etc/wgetrc
sudo apt-get update -y
echo "proxy setting is done"