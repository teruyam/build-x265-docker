# build-x265-docker
This is docker build file holder for x265

## Goal
- Build environment for x265

## Prerequisite
- Docker

## Gettings Started

Get repository from GitHub
```
git clone https://github.com/MasashiTeruya/build-x265-docker.git
```

Build base image
```
cd build-x265-docker/deps && docker build -t build-x265-deps .
```

Build build image
```
cd build-x265-docker/latest && docker build -t build-x265-latest .
```

Run build image with host /tmp directory is mounted.
```
docker run -v /tmp:/output build-x265-latest
```

You will find x265 binary is at /tmp/x265
