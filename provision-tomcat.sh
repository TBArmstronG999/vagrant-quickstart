#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install -y nano git openjdk-7-jdk openjdk-7-jre-headless

cd /usr/local/
wget http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
tar -xzvf apache-tomcat-8.0.53.tar.gz
ln -s apache-tomcat-8.0.53 tomcat

cp /vagrant/tomcat8 /etc/init.d/tomcat8 
chmod 755 /etc/init.d/tomcat8
update-rc.d tomcat8 defaults 
service tomcat8 start
