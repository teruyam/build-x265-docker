# build-x265
Build x265 binary into specified volume.

## Goal
- Provide build environment for x265

## Prerequisite
- Docker

## Quick Start
Run build image from Docker Hub with host /tmp directory mounted.
```
docker run -v /tmp:/output teruya/build-x265:latest
```

After build, You will find x265 binary is at /tmp/x265

## To build with your original tags
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

