#!/bin/bash

# run this after the install_apex.sh

cd /files
unzip ords.3.0.4.60.12.48.zip -d /u01/ords
cd /u01/ords

java -jar ords.war
# Enter the location to store configuration data: /u01


# clean
rm -rf /files/ords*
rm -rf /u01/app/oracle/apex

# solution for the problem with timezone
dpkg-reconfigure tzdata

# alter users
sqlplus -S sys/oracle@XE as sysdba < 'alter user APEX_PUBLIC_USER  identified by oracle account unlock;'



service tomcat stop

cp /u01/ords/ords.war /tomcat/webapps/
mv /u01/app/oracle/apex/images /tomcat/webapps/i

service tomcat start
