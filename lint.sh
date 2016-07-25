#!/bin/bash
BASEDIR=`pwd`
cd src/tao/views/build
export PATH="$PATH:/var/lib/jenkins/.nvm/versions/node/v6.2.1/bin"
npm run lint -- --extension=$1 --reports=$BASEDIR/reports
