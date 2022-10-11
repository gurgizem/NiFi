#!/bin/bash

mkdir downloads
cd downloads

wget https://dlcdn.apache.org/nifi/1.15.0/nifi-1.15.0-bin.tar.gz

sudo tar -zxvf nifi-1.15.0-bin.tar.gz
sudo mv nifi-1.15.0 /opt/

sudo /opt/nifi-1.15.0/bin/nifi.sh install

sudo useradd -s /bin/bash -m -G sudo nifiuser1
sudo chown nifiuser1:nifiuser1 /opt/nifi-1.15.0/conf/nifi.properties
sudo su nifiuser1
sudo cat nifi_copy.properties>/opt/nifi-1.15.0/conf/nifi.properties 

sudo systemctl daemon-reload

sudo service nifi start

sudo service nifi status


