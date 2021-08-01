#!/bin/sh
if [ -z "$1" ]; then
  echo "You must enter in a version number argument."
  exit 1
elif [ "$2" = "rebuild" ]; then
  docker build -t saltaaron/flask-planets:$1 -t saltaaron/flask-planets:latest --push .
fi
docker rm -f planets
docker run -d --network docker-compose_default --name planets -p 5000:5000 saltaaron/flask-planets:$1
