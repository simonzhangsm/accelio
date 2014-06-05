#!/bin/bash


# Arguments Check
if [ $# -ne 2 ]; then
        echo "[$0] Missing Parameters!"
        echo "Usage: $0 [Server IP] [Port]"
        exit 1
fi

export LD_LIBRARY_PATH=../../../src/usr/

server_ip=$1
port=$2
core=1
ovec=0
hdrlen=0

#./xio_server -c ${core} -p ${port} -n ${hdrlen} -w 0		-l ${ovec} ${server_ip}
#./xio_server -c ${core} -p ${port} -n ${hdrlen} -w 512		-l ${ovec} ${server_ip}
./xio_server -c ${core} -p ${port} -n ${hdrlen} -w 1024	-l ${ovec} ${server_ip}
#./xio_server -c ${core} -p ${port} -n ${hdrlen} -w 4096	-l ${ovec} ${server_ip}
#./xio_server -c ${core} -p ${port} -n ${hdrlen} -w 16384	-l ${ovec} ${server_ip}
#./xio_server -c ${core} -p ${port} -n ${hdrlen} -w 32768	-l ${ovec} ${server_ip}
#./xio_server -c ${core} -p ${port} -n ${hdrlen} -w 65536	-l ${ovec} ${server_ip}
#./xio_server -c ${core} -p ${port} -n ${hdrlen} -w 131072	-l ${ovec} ${server_ip}
#./xio_server -c ${core} -p ${port} -n ${hdrlen} -w 1048576	-l ${ovec} ${server_ip}

