FROM ubuntu:14.04

MAINTAINER Andrzej Raczkowski <araczkowski@gmail.com>

ARG PASSWORD
ENV PASSWORD ${PASSWORD:-secret}

# get rid of the message: "debconf: unable to initialize frontend: Dialog"
ENV DEBIAN_FRONTEND noninteractive

# all installation files
ADD files/* /files/

# SSH
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:'$PASSWORD | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

# ORACLE XE
RUN mv /files/chkconfig /sbin/chkconfig && \
    apt-get update && apt-get install -y -q libaio1 unzip net-tools bc curl rlwrap && \
    apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* && \
    ln -s /usr/bin/awk /bin/awk && mkdir /var/lock/subsys && \
    chmod 755 /sbin/chkconfig && ./files/install_oracle.sh
ENV ORACLE_HOME /u01/app/oracle/product/11.2.0/xe
ENV PATH $ORACLE_HOME/bin:$PATH
ENV ORACLE_SID=XE
EXPOSE 1521
EXPOSE 8888
VOLUME ["/u01/app/oracle"]
ENV processes 500
ENV sessions 555
ENV transactions 610

# Install Oracle Java 7
RUN ./files/install_java.sh

# # TOMCAT 8
RUN ./files/install_tomcat.sh
EXPOSE 8080

# Clear
RUN rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

# ENTRYPOINT
#
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
