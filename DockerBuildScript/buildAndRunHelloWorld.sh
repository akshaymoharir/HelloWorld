#!/usr/bin/env bash

# Find base dir
BASEDIR=$(dirname "$0")
echo "$BASEDIR"

# Copy base dir
currentDir=$BASEDIR
echo "${currentDir}"

# Browse to root directory of the app
desiredPath="${currentDir}/.."
echo "${desiredPath}"
cd ${desiredPath}

cd HelloWorldApp
make clean
cd ..

# Build fresh docker image(--no-cache)
docker build --no-cache -t helloworld .

# Run docker image to see output
docker run -it helloworld

CONTAINER_ID=$(docker ps -alq)
# If you do not know the exact file name, you'll need to run "ls"
# FILE=$(docker exec CONTAINER_ID sh -c "ls /path/*.zip")

#docker cp $CONTAINER_ID:/RepoRootFolder/HelloWorldApp/buildDocker ../HelloWorldApp/dockerContainerBuild/

docker cp $CONTAINER_ID:/RepoRootFolder/HelloWorldApp/buildDocker ../HelloWorld/HelloWorldApp/dockerContainerBuild/

docker stop $CONTAINER_ID



