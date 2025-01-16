#!/bin/bash

set -e

IMAGE_NAME=$IMAGE_NAME
DOCKER_REGISTRY=$DOCKER_REGISTRY

deploy_image() {
  echo "Deploying Docker image..."
  sudo docker run -d -p 3000:3000 $DOCKER_REGISTRY/$IMAGE_NAME:latest
}

deploy_image