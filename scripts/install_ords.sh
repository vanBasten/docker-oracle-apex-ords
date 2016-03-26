#!/bin/bash
#PASSWORD=${1:-secret}

unzip -o /files/ords.3.0.4.60.12.48.zip -d /u01/ords

sed -i -E 's:secret:'$PASSWORD':g' /scripts/ords_unlock_account.sql
sed -i -E 's:secret:'$PASSWORD':g' /scripts/ords/conf/apex_al.xml
sed -i -E 's:secret:'$PASSWORD':g' /scripts/ords/conf/apex_pu.xml
sed -i -E 's:secret:'$PASSWORD':g' /scripts/ords/conf/apex_rt.xml
sed -i -E 's:secret:'$PASSWORD':g' /scripts/ords/conf/apex.xml
sed -i -E 's:secret:'$PASSWORD':g' /scripts/ords/params/ords_params.properties


cp -rf /scripts/ords/conf /u01/ords
cp -rf /scripts/ords/params /u01/ords
cp -rf /scripts/ords_unlock_account.sql /u01/ords
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
