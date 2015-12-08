package-build-js
================

Phing Wrapper that enables you to run client side tools against a TAO distribution.

## Installation

### Required binaries

 - [git](https://git-scm.com/downloads)
 - [node.js](https://nodejs.org/en/download/)
 - [sass](http://sass-lang.com/install)

### Project set up

Clone the project : 

```sh
git clone https://github.com/oat-sa/package-build-js.git
```

Set up the project

```sh
./composer.phar install
```

Also check you have the following npm package installed globally:

```sh
npm install -g grunt-cli csso
```

## Run a build

The following properties are required in order to run the build :

- repo : name of the OAT repository to retrieve the TAO distribution from (needs a composer.json)
- branch : repository branch
- extensions: comma separated list of the TAO extensions to include in the build

```sh
./vendor/bin/phing build -Dextensions=tao,taoQtiItem,taoQtiTest -Drepo=package-tao -Dbranch=develop
```
