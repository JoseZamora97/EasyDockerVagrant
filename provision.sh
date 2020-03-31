#!/bin/bash

apt-get update
apt update

# Install Java 8.
apt install -y openjdk-8-jdk openjdk-8-jre

# Configure Java 8 environment variables.
export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
export PATH=JAVA_HOME/bin:$PATH

# Install python 3.6
apt install -y python3.6

# Install docker
apt-get -y install apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common && \
    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
    add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable" && \
    apt-get update && \
    apt-get -y install docker-ce

# Install docker-compose
apt install -y docker-compose

#Install maven
apt install -y maven


