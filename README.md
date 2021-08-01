# Sample Flask App

This application contains: one flask app in `app.py`. It serves up data about planets from [NASA data](https://solarsystem.nasa.gov/moons/in-depth/) at `/planets` and `/planets/<position>`.

## Running

```
FLASK_APP=app.py python -mflask run
```

In its more portable form, run it as a Docker Container:
```
docker run -d --name planets -p 5000:5000 saltaaron/flask-planets
```

## Building

To build, clone this repo and:

`docker buildx create --use` (for multi-platform usage)

`docker buildx build --platform linux/amd64,linux/arm64 -t <your_docker_hub_account>/flask-planets --push .`

