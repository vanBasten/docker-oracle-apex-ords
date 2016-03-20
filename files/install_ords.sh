#!/bin/bash

# run this after the install_apex.sh

cd /files
unzip ords.3.0.4.60.12.48.zip -d /u01/ords
cd /u01/ords

java -jar ords.war
# u01 localhost 1521 2 xe secret secret sys secret secret 1 secret secret 1 secret secret secret secret 2
# Enter the location to store configuration data: /u01
# < /dev/null

# solution for the problem with timezone
dpkg-reconfigure tzdata

# alter users
cd /files
sqlplus sys/secret@XE as sysdba
alter user APEX_PUBLIC_USER  identified by secret account unlock;



service tomcat stop

cp /u01/ords/ords.war /tomcat/webapps/
mv /u01/app/oracle/apex/images /tomcat/webapps/i

service tomcat start

# clean
rm -rf /files/ords*
rm -rf /u01/app/oracle/apex
