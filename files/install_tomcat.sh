#!/bin/bash

# tar zxf apache-tomcat-8.0.11.tar.gz ???
mv /files/apache-tomcat-8.0.11 /tomcat
sed -i -e 's/password="secret"/password="'$PASSWORD'"/g' /files/tomcat-users.xml
mv /files/tomcat-users.xml /tomcat/conf
mv /files/tomcat8 /etc/init.d/tomcat
chmod 755 /etc/init.d/tomcat
update-rc.d tomcat defaults  80 01

# clean
rm -rf /files/tomcat*
