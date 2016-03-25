#!/bin/bash

mkdir /files && cd files

downloadFiles () {

	local url="https://github.com/araczkowski/docker-oracle-apex-ords"

	local files=(
		jdk1.7.0_79.zip-aa
		jdk1.7.0_79.zip-ab
		jdk1.7.0_79.zip-ac
    oracle-xe_11.2.0-1.0_amd64.debaa
    oracle-xe_11.2.0-1.0_amd64.debab
    oracle-xe_11.2.0-1.0_amd64.debac
    apex_5.0.3_en.zip
    instantclient-basic-linux.x64-12.1.0.2.0.zip
    instantclient-sqlplus-linux.x64-12.1.0.2.0.zip
    ords.3.0.4.60.12.48.zip
    ords.3.0.4.60.12.48.zip
	)

	local i=1
	for part in "${files[@]}"; do
		echo "[Downloading '$part' (part $i/x)]"
		curl --progress-bar --retry 3 -m 60 -o $part -L $url/blob/master/files/$part?raw=true
		i=$((i + 1))
	done
}

downloadFiles
