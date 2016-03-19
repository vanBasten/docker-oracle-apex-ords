docker-oracle-apex-ords
============================
[![](https://badge.imagelayers.io/araczkowski/oracle-apex-ords:latest.svg)](https://imagelayers.io/?images=araczkowski/oracle-apex-ords:latest 'Get your own badge on imagelayers.io')

Oracle Express Edition 11g Release 2 on Ubuntu 14.04.1 LTS with APEX 5 and ORDS

### Installation

    docker pull araczkowski/oracle-apex-ords

Run with 8080, 8888, 1521, 22 ports opened:

    docker run -d --name apex-ords -p 49160:22 -p 8080:8080 -p 8888:8888 -p 1521:1521 araczkowski/oracle-apex-ords

Connect to server via ssh with following setting:

    ssh root@localhost -p 49160
    password: admin
    or
    docker exec -it apex-ords /bin/bash



Connect database with following setting:

    hostname: localhost
    port: 1521
    sid: xe
    username: system
    password: oracle

Password for SYS & SYSTEM:

    oracle

Connect to Oracle Application Express web management console with following settings:

    http://localhost:8888/apex
    workspace: INTERNAL
    user: ADMIN
    password: oracle


To update APEX to newest version:

    cd /files
    ./instll_apex.sh

To install ORDS:

    cd /files
    #follow the steps in install_ords
    ./install_ords.sh
