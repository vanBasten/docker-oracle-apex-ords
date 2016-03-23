FROM ubuntu:14.04

MAINTAINER Andrzej Raczkowski <araczkowski@gmail.com>

ARG PASSWORD
ENV PASSWORD ${PASSWORD:-secret}

# get rid of the message: "debconf: unable to initialize frontend: Dialog"
ENV DEBIAN_FRONTEND noninteractive

# all installation files
ADD files/* /files/

# SSH
RUN ./files/install_ssh.sh
EXPOSE 22

# Install Oracle Java 7
RUN ./files/install_java.sh

# TOMCAT 8
RUN ./files/install_tomcat.sh
EXPOSE 8080

# ORACLE XE with APEX and ORDS (todo)
RUN ./files/install_oracle.sh
EXPOSE 1521
EXPOSE 8888

# Clear
RUN rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

# ENTRYPOINT
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
