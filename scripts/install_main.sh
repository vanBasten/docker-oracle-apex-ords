#!/bin/bash

exec >> >(tee -ai /docker_log.txt)
exec 2>&1

apt-get update && apt-get install -y unzip vim curl

# Download files
echo "--------------------------------------------------"
echo "Downloading all files............................."
./scripts/download_files.sh
#
#
echo "--------------------------------------------------"
echo "Installing SSH...................................."
./scripts/install_ssh.sh
#
#
echo "--------------------------------------------------"
echo "Installing JAVA..................................."
./scripts/install_java.sh
#
#
echo "--------------------------------------------------"
echo "Installing TOMCAT................................."
./scripts/install_tomcat.sh
#
#
echo "--------------------------------------------------"
echo "Installing ORACLE XE.............................."
./scripts/install_oracle.sh
#
#
echo "--------------------------------------------------"
echo "Installing ORACLE APEX............................"
./scripts/install_apex.sh
#
#
echo "--------------------------------------------------"
echo "Installing ORACLE APEX............................"
./scripts/install_ords.sh
#
#
echo "--------------------------------------------------"
echo "Clean............................................."
rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*
rm -rf /files
rm -rf /u01/app/oracle/apex
rm -rf /u01/ords/ords.war
apt-get clean
echo "--------------------------------------------------"
echo "DONE.............................................."
