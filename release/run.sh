#!/bin/sh

docker run --rm -v /tmp/x265:/output -e VERSION=2.1 build-x265-release

