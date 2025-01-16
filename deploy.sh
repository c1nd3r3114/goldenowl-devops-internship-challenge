#!/bin/bash

set -e

cat $IMAGE_NAME

pull_image() {
  echo "Pulling Docker image..."
  sudo docker pull $DOCKER_REGISTRY/$IMAGE_NAME
}

deploy_image() {
  echo "Deploying Docker image..."
  sudo docker run -d -p 3000:3000 $DOCKER_REGISTRY/$IMAGE_NAME
}

deploy_image