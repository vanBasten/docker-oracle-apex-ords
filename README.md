docker-oracle-apex-ords
============================
[![](https://badge.imagelayers.io/araczkowski/oracle-apex-ords:latest.svg)](https://imagelayers.io/?images=araczkowski/oracle-apex-ords:latest 'Get your own badge on imagelayers.io')

Oracle Express Edition 11g Release 2 on Ubuntu 14.04.1 LTS with APEX 5 and ORDS

### Installation

    docker pull araczkowski/oracle-apex-ords

Run with 8080 and 1521 ports opened:

    docker run -d -p 8080:8080 -p 1521:1521 araczkowski/oracle-apex-ords


Connect database with following setting:

    hostname: localhost
    port: 1521
    sid: xe
    username: system
    password: oracle

Password for SYS & SYSTEM:

    oracle

Connect to Oracle Application Express web management console with following settings:

    http://localhost:8080/apex
    workspace: INTERNAL
    user: ADMIN
    password: oracle
