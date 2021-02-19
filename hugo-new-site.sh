#!/bin/bash

#       -e  Exit immediately if a command exits with a non-zero status.
#       -u  Treat unset variables as an error when substituting.
#       -x  Print commands and their arguments as they are executed.
set -eu

# define the docker container and its version
DOCKER_IMG=jguyomard/hugo-builder

#detect platform that we're running on...
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

# make sure we have the docker image
if [[ "$(docker images -q "${DOCKER_IMG}" 2> /dev/null)" == "" ]]; then
	echo "Pulling Hugo Docker image"
	docker pull "${DOCKER_IMG}"
fi

# setup the current path currently for Mac, Win or Linux
curPath=`pwd`
echo "curPath = ${curPath}"
if [ "${machine}" == "MinGw" ]; then
	curPath=/`pwd`
fi

# run it!
docker run --rm -it -v "${curPath}":/src -u hugo "${DOCKER_IMG}" hugo new site c2pa-site

