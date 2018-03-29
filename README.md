# ubuntu-docker-ready
vagrant script for docker ready virtual machine

# Change proxy settings with fart command e.g. 
fart -i -r . proxyUserPassword actualPassword
fart -i -r . proxyUserName actualName

vagrant up devvm

# ssh to devvm
vagrant ssh devvm

# cd to the shared folder /srv/docker/composetest
cd /srv/docker/composetest
docker-compose up 


# if  evrything is fine we can go to this url
http://192.168.1.47:5000/


