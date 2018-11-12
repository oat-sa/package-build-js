#!/bin/bash
BASEDIR=`pwd`
cd src/tao/views/build

node --version
npm --version
sass --version

echo "Install NPM"
npm --no-color install

echo "Compile JS"
npm run bundle

echo "Check SASS runtime"
npm run sass

echo "Run js unit test"
npm run test -- --reports=$BASEDIR/reports
