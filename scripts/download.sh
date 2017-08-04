#!/bin/bash

VERSION="0.14.6"
FILENAME_ROOT="bitcoin-${VERSION}"
FILENAME="${FILENAME_ROOT}-x86_64-linux-gnu.tar.gz"
DOWNLOAD_PATH="https://download.bitcoinabc.org/0.14.6/linux/${FILENAME}"

curl -O ${DOWNLOAD_PATH}
tar -xvzf ${FILENAME}

cp -r ${FILENAME_ROOT}/* .

ln -sf "${FILENAME_ROOT}/bin/bitcoind" /usr/bin/bitcoind

rm ${FILENAME}
rm -rf ${FILENAME_ROOT}
