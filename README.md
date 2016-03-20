docker-oracle-apex-ords
============================
[![](https://badge.imagelayers.io/araczkowski/oracle-apex-ords:latest.svg)](https://imagelayers.io/?images=araczkowski/oracle-apex-ords:latest 'Get your own badge on imagelayers.io')

Oracle Express Edition 11g Release 2 on Ubuntu 14.04.1 LTS with APEX 5 and ORDS

### Building

    docker build -t oracle-apex-ords --build-arg PASSWORD=secret .

### Installation

    docker pull araczkowski/oracle-apex-ords

Run with 8080, 8888, 1521, 22 ports opened:

    docker run -d -e PASSWORD='secret' --name apex-ords -p 49160:22 -p 8080:8080 -p 8888:8888 -p 1521:1521 araczkowski/oracle-apex-ords

Connect to server via ssh with following setting:

    ssh root@localhost -p 49160
    password: secret

Connect database with following setting:

    hostname: localhost
    port: 1521
    sid: xe
    username: system
    password: secret

Password for SYS & SYSTEM:

    secret

Connect to Oracle Application Express web management console with following settings:

    http://localhost:8888/apex
    workspace: INTERNAL
    user: ADMIN
    password: secret



To update APEX to newest version:

    cd /files
    ./install_apex.sh secret

To install ORDS:

    cd /files
    #follow the steps in install_ords
    ./install_ords.sh
