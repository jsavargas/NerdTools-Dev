#!/bin/bash

BASEDIR=$PWD


cd ../source/NerdTools-Dev 
./pkg_build.sh $1


version=$(date +"%Y.%m.%d")$1

echo "VERSION: $version"

echo "${BASH_SOURCE[0]}"

# CALCULATE MD5
md5=($(md5sum ${BASEDIR}/../archive/NerdTools-Dev-${version}-x86_64-1.txz))
echo ${md5}

sed -i "s/ENTITY version   .*/ENTITY version   \"$version\">"/ "$BASEDIR/../plugin/NerdTools-Dev.plg"
sed -i "s/ENTITY md5       .*/ENTITY md5       \"$md5\">"/ "$BASEDIR/../plugin/NerdTools-Dev.plg"

