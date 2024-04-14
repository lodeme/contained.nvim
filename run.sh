#!/bin/bash

# Name of the Docker container
CONTAINER_NAME="nvim-alpine"

# Check if the container already exists
if docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
	echo "Container already exists. Starting container ${CONTAINER_NAME}..."
	docker start -ai "${CONTAINER_NAME}"
else
	echo "Container does not exist. Creating and starting ${CONTAINER_NAME}..."
	docker run -it --name "${CONTAINER_NAME}" -v $HOME:/home nvim-alpine fish
fi
