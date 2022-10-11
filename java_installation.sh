#!/bin/bash

#install java with apt
sudo apt-get update
sudo apt-get install openjdk-11-jdk

sudo chown ubuntu:ubuntu /etc/profile.d
sudo cat java_copy.sh>/etc/profile.d/java.sh
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

java --version
