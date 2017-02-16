#!/bin/bash -xe

URL=http://ftp.yz.yamagata-u.ac.jp/pub/network/apache//jmeter/binaries/apache-jmeter-3.1.tgz
INSTALL_DIR=$HOME/.tool/jmeter

if [ ! `type java` ]; then
    echo "java not found"
    exit 1
fi

wget $URL -O tar.gz
mkdir -p $INSTALL_DIR
tar xfvz tar.gz -C $INSTALL_DIR --strip-components 1
rm tar.gz

cat << EOS >> $HOME/.profile
# Apache JMeter
PATH=$INSTALL_DIR/bin:\$PATH
EOS

source $HOME/.profile

echo "done!"
