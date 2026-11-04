[![Python application](https://github.com/aaronhmiller/flask-planets/actions/workflows/python-app.yaml/badge.svg)](https://github.com/aaronhmiller/flask-planets/actions/workflows/python-app.yaml)
# Sample Flask App

This application contains: one flask app in `app.py`. It serves up data about planets from [NASA data](https://solarsystem.nasa.gov/moons/in-depth/) at `/planets` and `/planets/<position>`.

## Running

```
FLASK_APP=app.py python -m flask run --port 5005
```

In its more portable form, run it as a Docker Container:
```
docker build -t flask-planets:local .
docker run -d --name planets -p 5005:5005 flask-planets:local
```

The published image must be rebuilt with these changes before it can be used on port 5005.

## Building

To build, clone this repo and:

`docker buildx create --use` (for multi-platform usage)

`docker buildx build --platform linux/amd64,linux/arm64 -t <your_docker_hub_account>/flask-planets --push .`

