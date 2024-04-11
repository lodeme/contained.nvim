#!/bin/bash

IMAGE_NAME="nvim-container"

# Optionally, remove existing container to force recreation after image rebuild
docker rm -f ${IMAGE_NAME} || true

# Build the image
docker build --no-cache -t ${IMAGE_NAME} .
