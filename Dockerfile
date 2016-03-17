FROM ubuntu:14.04

MAINTAINER Andrzej Raczkowski <araczkowski@gmail.com>

# get rid of the message: "debconf: unable to initialize frontend: Dialog"
#ENV DEBIAN_FRONTEND noninteractive

# SSH
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:admin' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]


# ORACLE EX
ADD chkconfig /sbin/chkconfig
ADD oracle-install.sh /oracle-install.sh
ADD init.ora /
ADD initXETemp.ora /

# Prepare to install Oracle
RUN apt-get update && apt-get install -y -q libaio1 unzip net-tools bc curl rlwrap && \
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
EXPOSE 8888
VOLUME ["/u01/app/oracle"]

ENV processes 500
ENV sessions 555
ENV transactions 610


# APEX 5
# upgrade to apex 5 after installation

RUN rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*
ADD instantclient-* /tmp/
ADD apex* /apex_5.0.2/
ADD upgrade_apex.sh /upgrade_apex.sh

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
