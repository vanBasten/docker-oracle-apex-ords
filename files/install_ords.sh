#!/bin/bash

exec >> /files/docker_log.txt
exec 2>&1

PASSWORD=${1:-secret}

unzip -o /files/ords.3.0.4.60.12.48.zip -d /u01/ords

sed -i -E 's:secret:'$PASSWORD':g' /files/ords_unlock_account.sql
sed -i -E 's:secret:'$PASSWORD':g' /files/apex_al.xml
sed -i -E 's:secret:'$PASSWORD':g' /files/apex_pu.xml
sed -i -E 's:secret:'$PASSWORD':g' /files/apex_rt.xml
sed -i -E 's:secret:'$PASSWORD':g' /files/apex.xml

cp -rf /files/apex_*.xml /u01/ords/conf
cp -rf /files/ords_unlock_account.sql /u01/ords
cd /u01/ords


java -jar ords.war configdir /u01

sqlplus -S sys/$PASSWORD@XE as sysdba @ords_unlock_account.sql < /dev/null


# solution for the problem with timezone
#dpkg-reconfigure tzdata
echo "Europe/Warsaw" > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata


service tomcat stop

cp -rf /u01/ords/ords.war /tomcat/webapps/
cp -rf /u01/app/oracle/apex/images /tomcat/webapps/i

service tomcat start
