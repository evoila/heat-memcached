#!/bin/bash

MEMORY_MB=${MEMORY_MB:-64}
BIND_PORT=${BIND_PORT:-11211}
CONNECTION_LIMIT=${CONNECTION_LIMIT:-1000}

cat <<EOF > /etc/sysconfig/memcached
PORT="$BIND_PORT"
CACHESIZE="$MEMORY_MB"
MAXCONN="$CONNECTION_LIMIT"
USER="memcached"
OPTIONS="-l 0.0.0.0 -M"
EOF

service memcached restart
