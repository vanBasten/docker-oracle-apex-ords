#!/bin/bash

# run this after the install_apex.sh

cd /files
unzip ords.3.0.4.60.12.48.zip -d /u01/ords
cd /u01/ords

java -jar ords.war
# Enter the location to store configuration data: /u01
# u01 localhost 1521 2 xe oracle oracle sys oracle oracle 1 oracle oracle 1 oracle oracle oracle oracle 2< /dev/null

# clean
rm -rf /files/ords*
rm -rf /u01/app/oracle/apex

# solution for the problem with timezone
dpkg-reconfigure tzdata

# alter users
cd /files
sqlplus -S sys/oracle@XE as sysdba @ords_unlock_account.sql < /dev/null



service tomcat stop

cp /u01/ords/ords.war /tomcat/webapps/
mv /u01/app/oracle/apex/images /tomcat/webapps/i

service tomcat start
