#!/bin/bash -xe

URL=https://storage.googleapis.com/golang/go1.7.5.linux-amd64.tar.gz
INSTALL_DIR=$HOME/.tool/go
GOPATH=$HOME/.go

wget $URL -O tar.gz
mkdir -p $INSTALL_DIR
tar xfvz tar.gz -C $INSTALL_DIR --strip-components 1
rm tar.gz

cat << EOS >> $HOME/.profile
# Golang
export GOROOT=$INSTALL_DIR
export GOPATH=$GOPATH
PATH=\$GOROOT/bin:\$GOPATH/bin:\$PATH
EOS

source $HOME/.profile

go version
echo "done!"
