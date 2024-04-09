#!/bin/bash

IMAGE_NAME="nvim-container"

# Optionally, remove existing container to force recreation after image rebuild
docker rm -f ${IMAGE_NAME} || true

# Build the image
docker build --platform linux/amd64 -t ${IMAGE_NAME} .
