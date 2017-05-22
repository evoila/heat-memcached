#!/bin/bash

MEMORY_MB=${MEMORY_MB:-64}
BIND_PORT=${BIND_PORT:-11211}
CONNECTION_LIMIT=${CONNECTION_LIMIT:-5000}

cat <<EOF > /etc/memcached.conf
-d
logfile /var/log/memcached.log
-m $MEMORY_MB
-p $BIND_PORT
-u memcache
-l 0.0.0.0
-c $CONNECTION_LIMIT
-M
EOF

service memcached restart
