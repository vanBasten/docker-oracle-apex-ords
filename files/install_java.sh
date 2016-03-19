#!/bin/bash
cat /files/jdk1.7.0_79.zip-aa >> /files/jdk1.7.0_79.zip
cat /files/jdk1.7.0_79.zip-ab >> /files/jdk1.7.0_79.zip
cat /files/jdk1.7.0_79.zip-ac >> /files/jdk1.7.0_79.zip
cd /files
unzip jdk1.7.0_79.zip
mv jdk1.7.0_79 /usr/local/java
echo 'JAVA_HOME=/usr/local/java' >> /etc/profile
echo 'PATH=$PATH:$HOME/bin:$JAVA_HOME/bin' >> /etc/profile
echo 'export JAVA_HOME' >> /etc/profile
echo 'export PATH' >> /etc/profile
update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/bin/java" 1
source /etc/profile

# clean
rm -rf /files/jdk*
