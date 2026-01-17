#!/bin/bash
set -e

# Variables
DOCKER_USER="madhusudhan143"
IMAGE_NAME="frontend"
TAG="latest"

echo "[INFO] Logging in to Docker Hub..."
sudo docker login

echo "[INFO] Building Docker image..."
sudo docker build -t "$DOCKER_USER/$IMAGE_NAME:$TAG" .

echo "[INFO] Pushing image to Docker Hub..."
sudo docker push "$DOCKER_USER/$IMAGE_NAME:$TAG"

echo "[INFO] Build and push completed successfully!"

