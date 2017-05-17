#!/bin/bash

yum install -y memcached

service memcached stop

sed -i 's/^MemoryDenyWriteExecute=true/#MemoryDenyWriteExecute=true/' /usr/lib/systemd/system/memcached.service 
