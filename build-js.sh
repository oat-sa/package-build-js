#!/bin/bash
BASEDIR=`pwd`
cd src/tao/views/build
export PATH="$PATH:/var/lib/jenkins/.nvm/versions/node/v6.2.1/bin"
npm --version
sass --version
grunt --version
echo "Install NPM"
npm --no-color install
echo "Compile JS"
npm run bundle        
echo "Check SASS runtime"
npm run sass
grunt testall --no-color --force --reports=$BASEDIR/reports