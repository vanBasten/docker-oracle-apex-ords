#!/bin/bash

PASSWORD=${1:-secret}

cp  /files/instantclient* /tmp
unzip -o /tmp/instantclient-basic-linux.x64-12.1.0.2.0.zip -d /
unzip -o /tmp/instantclient-sqlplus-linux.x64-12.1.0.2.0.zip -d /

SQLPLUS=/u01/app/oracle/product/11.2.0/xe/bin/sqlplus
SQLPLUS_ARGS="sys/$PASSWORD@XE as sysdba"

env

ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
PATH=$ORACLE_HOME/bin:$PATH
ORACLE_SID=XE

env

echo "CONNECTION TEST IN PROGRESS..."
echo "EXEC DBMS_XDB.GETHTTPPORT();" | $SQLPLUS -S $SQLPLUS_ARGS
echo "XE" | /u01/app/oracle/product/11.2.0/xe/bin/tnsping

./u01/app/oracle/product/11.2.0/xe/bin/tnsping xe


verify_connection(){
	echo "exit" | ${SQLPLUS} -L $SQLPLUS_ARGS | grep Connected > /dev/null
	if [ $? -eq 0 ];
	then
	   echo "Database Connetion is OK"
	else
	   echo -e "Database Connection Failed. Connection failed with:\n $SQLPLUS -S $SQLPLUS_ARGS\n `$SQLPLUS -S $SQLPLUS_ARGS` < /dev/null"
	   exit 1
	fi

	if [ "$(ls -A /u01/app/oracle)" ]; then
		echo "Check Database files folder: OK"
	else
		echo -e "Failed to find database files, run example:\n docker run -it --rm --volumes-from $oracle_db_name:oracle-database --link $oracle_db_name:oracle-database apex_ords install"
		exit 1
	fi
}

disable_http(){
	echo "Turning off DBMS_XDB HTTP port"
	echo "EXEC DBMS_XDB.SETHTTPPORT(0);" | $SQLPLUS -S $SQLPLUS_ARGS
}

enable_http(){
	echo "Turning on DBMS_XDB HTTP port"
	echo "EXEC DBMS_XDB.SETHTTPPORT(8888);" | $SQLPLUS -S $SQLPLUS_ARGS
}

get_oracle_home(){
	echo "Getting ORACLE_HOME Path"
	ORACLE_HOME=`echo -e "var ORACLEHOME varchar2(200);\n EXEC dbms_system.get_env('ORACLE_HOME', :ORACLEHOME);\n PRINT ORACLEHOME;" | $SQLPLUS -S $SQLPLUS_ARGS | grep "/.*/"`
	echo "ORACLE_HOME found: $ORACLE_HOME"
}

apex_epg_config(){
	cd /u01/app/oracle/apex
	#get_oracle_home
	echo "Setting up EPG for Apex by running: @apex_epg_config $ORACLE_HOME"
	$SQLPLUS -S $SQLPLUS_ARGS @apex_epg_config /u01/app/oracle < /dev/null
}

apex_upgrade(){
	cd /u01/app/oracle/apex
	echo "Upgrading apex..."
	$SQLPLUS -S $SQLPLUS_ARGS @apexins SYSAUX SYSAUX TEMP /i/ < /dev/null
	echo "Updating apex images"
	$SQLPLUS -S $SQLPLUS_ARGS @apxldimg.sql /u01/app/oracle < /dev/null
}

conf_rest(){
	cd /u01/app/oracle/apex
	echo "Installing rest..."
	$SQLPLUS -S $SQLPLUS_ARGS @apex_rest_config.sql $PASSWORD $PASSWORD < /dev/null
}

unzip_apex(){
	echo "Extracting Apex-5.0.3"
	rm -rf /u01/app/oracle/apex
	unzip /files/apex_5.0.3_en.zip -d /u01/app/oracle/
}

verify_connection
unzip_apex
disable_http
apex_upgrade
apex_epg_config
enable_http
conf_rest
