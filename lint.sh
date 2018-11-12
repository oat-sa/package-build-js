#!/bin/bash
BASEDIR=`pwd`
cd src/tao/views/build
npm run lint -- --extension=$1 --reports=$BASEDIR/reports
