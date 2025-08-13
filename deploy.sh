#!/bin/sh
if [ -z "$1" ]; then
  echo "You must enter in a version number argument."
  exit 1
elif [ "$2" = "rebuild" ]; then
  docker build -t aaronhmiller/flask-planets:$1 -t aaronhmiller/flask-planets:latest --push .
fi
docker rm -f planets
docker network create planet-network
docker run -d --network planet-network --name planets -p 5000:5000 aaronhmiller/flask-planets:$1
