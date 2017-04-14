#!/bin/bash -xe

URL="https://github.com/docker/compose/releases/download/1.12.0/docker-compose-Linux-x86_64"
INSTALL_DIR="/usr/local/bin"

wget $URL -O $INSTALL_DIR/docker-compose
chmod +x $INSTALL_DIR/docker-compose
