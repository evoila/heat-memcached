#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"

apt-get install -y memcached

service memcached stop
