#!/bin/bash

set -e

cd ./src

IMAGE_NAME=$IMAGE_NAME
DOCKER_REGISTRY=$DOCKER_REGISTRY

build_image() {
  echo "Building Docker image..."
  docker build -t $DOCKER_REGISTRY/$IMAGE_NAME .
}

push_image() {
  echo "Pushing Docker image..."
  docker push $DOCKER_REGISTRY/$IMAGE_NAME
}

build_image $IMAGE_NAME 