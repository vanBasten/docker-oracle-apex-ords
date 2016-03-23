#!/bin/bash

exec >> /files/docker_log.txt
exec 2>&1

apt-get update && apt-get install -y openssh-server
mkdir /var/run/sshd
echo 'root:'$PASSWORD | chpasswd
sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
NOTVISIBLE "in users profile"
echo "export VISIBLE=now" >> /etc/profile
