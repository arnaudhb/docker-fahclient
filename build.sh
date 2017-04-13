#!/bin/bash

USER_NAME=arnaudhb
IMG_NAME=$(basename $(pwd))
IMG_TAG=7.4.4

# Make some cleanup
docker rm -f `docker ps -a | grep "$USER_NAME/$IMG_NAME " | awk '{print $1}'` > /dev/null 2>&1
docker rmi `docker images -f "dangling=true" -q` > /dev/null 2>&1

docker build -t "$USER_NAME/$IMG_NAME" -t "$USER_NAME/$IMG_NAME:$IMG_TAG" .
