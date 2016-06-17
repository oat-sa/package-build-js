#!/bin/bash
BASEDIR=`pwd`
cd src/tao/views/build
export PATH="$PATH:/var/lib/jenkins/.nvm/versions/node/v6.2.1/bin"
grunt jshint:extensionreport --extension=$1 --reports=$BASEDIR/reports --no-color --force