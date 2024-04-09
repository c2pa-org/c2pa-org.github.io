#!/bin/bash

#       -e  Exit immediately if a command exits with a non-zero status.
#       -u  Treat unset variables as an error when substituting.
#       -x  Print commands and their arguments as they are executed.
set -eu

DOCKER_IMG=hugo-build-container
OUTPUT_DIR=docs

#detect platform that we're running on...
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

docker build -t "${DOCKER_IMG}" .

# setup the current path currently for Mac, Win or Linux
curPath=`pwd`
echo "curPath = ${curPath}"
if [ "${machine}" == "MinGw" ]; then
	curPath=/`pwd`
fi

# run it!
docker run --rm -it -v "${curPath}/${OUTPUT_DIR}":/src/${OUTPUT_DIR} -e "HUGO_DESTINATION=/src/${OUTPUT_DIR}" "${DOCKER_IMG}"

# make sure we add the CNAME file for Github pages
\cp -fv etc/CNAME docs
