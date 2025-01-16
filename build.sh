#!/bin/bash

set -e

IMAGE_NAME=$IMAGE_NAME
DOCKER_REGISTRY=$DOCKER_REGISTRY

build_image() {
  echo "Building Docker image..."
  docker build -t $DOCKER_REGISTRY/$IMAGE_NAME:$CIRCLE_SHA1 .
}

push_image() {
  echo "Pushing Docker image..."
  docker push $DOCKER_REGISTRY/$IMAGE_NAME:$CIRCLE_SHA1
}