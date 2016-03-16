FROM ubuntu:14.04

MAINTAINER Andrzej Raczkowski <araczkowski@gmail.com>

# get rid of the message: "debconf: unable to initialize frontend: Dialog"
ENV DEBIAN_FRONTEND noninteractive

ADD chkconfig /sbin/chkconfig
ADD oracle-install.sh /oracle-install.sh
ADD init.ora /
ADD initXETemp.ora /

# Prepare to install Oracle
RUN apt-get update && apt-get install -y -q libaio1 net-tools bc curl rlwrap && \
apt-get clean && \
rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* &&\
ln -s /usr/bin/awk /bin/awk &&\
mkdir /var/lock/subsys &&\
chmod 755 /sbin/chkconfig &&\
/oracle-install.sh

# see issue #1
ENV ORACLE_HOME /u01/app/oracle/product/11.2.0/xe
ENV PATH $ORACLE_HOME/bin:$PATH
ENV ORACLE_SID=XE

EXPOSE 1521
EXPOSE 8080
VOLUME ["/u01/app/oracle"]

ENV processes 500
ENV sessions 555
ENV transactions 610

# upgrade to apex 5 after installation
ENV LD_LIBRARY_PATH /instantclient_12_1
ENV USER sys
ENV PASS oracle
ENV HOST oracle-database
ENV PORT 1521
ENV SID XE
ENV HTTP_PORT 8080
ENV APEX_VERSION 5.0.2

RUN apt-get update && apt-get -y install libaio1 unzip && apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

ADD instantclient-* /tmp/
ADD apex* /apex_5.0.2/
ADD upgrade_apex.sh /upgrade_apex.sh

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/upgrade_apex.sh"]
