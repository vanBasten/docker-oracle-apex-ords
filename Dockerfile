FROM ubuntu:14.04

MAINTAINER Andrzej Raczkowski <araczkowski@gmail.com>

# get rid of the message: "debconf: unable to initialize frontend: Dialog"
ENV DEBIAN_FRONTEND noninteractive

# SSH
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:admin' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

# ORACLE XE
ADD chkconfig /sbin/chkconfig
ADD oracle-install.sh /oracle-install.sh
ADD init.ora /
ADD initXETemp.ora /
RUN apt-get update && apt-get install -y -q libaio1 unzip net-tools bc curl rlwrap && \
    apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* && \
    ln -s /usr/bin/awk /bin/awk && mkdir /var/lock/subsys && \
    chmod 755 /sbin/chkconfig && /oracle-install.sh
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
ENV JAVA_VER 7
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
RUN echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list && \
    echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 && \
    apt-get update && \
    echo oracle-java${JAVA_VER}-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
    apt-get install -y --force-yes --no-install-recommends oracle-java${JAVA_VER}-installer oracle-java${JAVA_VER}-set-default && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists && \
    rm -rf /var/cache/oracle-jdk${JAVA_VER}-installer

# TOMCAT 8
RUN apt-get update && \
    apt-get install -yq --no-install-recommends wget pwgen ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENV TOMCAT_MAJOR_VERSION 8
ENV TOMCAT_MINOR_VERSION 8.0.11
ENV CATALINA_HOME /tomcat
RUN wget -q https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz && \
    wget -qO- https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz.md5 | md5sum -c - && \
    tar zxf apache-tomcat-*.tar.gz && \
    rm apache-tomcat-*.tar.gz && \
    mv apache-tomcat* tomcat
ADD tomcat-users.xml /tomcat-users.xml
RUN mv /tomcat-users.xml /tomcat/conf
ADD tomcat8 /tomcat8
ADD install_tomcat.sh /install_tomcat.sh
RUN ./install_tomcat.sh
EXPOSE 8080

# APEX 5
# upgrade to apex 5 after installation
RUN rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*
ADD instantclient-* /tmp/
ADD apex* /apex_5.0.2/
ADD upgrade_apex.sh /upgrade_apex.sh

# ORDS
ADD ords.3.0.4.60.12.48.zip /ords.3.0.4.60.12.48.zip


# ENTRYPOINT
#
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
