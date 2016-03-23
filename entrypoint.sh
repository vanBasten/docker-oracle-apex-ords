#!/bin/bash

exec >> /files/docker_log.txt
exec 2>&1

/etc/init.d/tomcat start
/etc/init.d/ssh start

# Update hostname
sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora
sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /u01/app/oracle/product/11.2.0/xe/network/admin/tnsnames.ora
sed -i -E "s/PORT = [^)]+/PORT = 1521/g" /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora

/etc/init.d/oracle-xe start


#just to prevent Docker container to exit, when run as daemon
tail -f /dev/null
