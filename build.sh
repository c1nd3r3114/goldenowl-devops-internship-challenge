#!/bin/bash

set -e

cd ./src

build_image() {
  echo "Building Docker image..."
  docker build -t $DOCKER_REGISTRY/$IMAGE_NAME .
}

push_image() {
  echo "Pushing Docker image..."
  docker push $DOCKER_REGISTRY/$IMAGE_NAME
}

build_image 
push_image 