#!/bin/bash

# Get the ID of the first running container
container_id=$(sudo docker ps -q | head -n 1)

if [ -z "$container_id" ]; then
    echo "No running containers found, skipping clean-up"
else
    # Stop and remove the existing container
    sudo docker stop "$container_id"
    sudo docker rm "$container_id"
fi

# Build the Docker image
sudo docker build -t my-gin-server .

# Run a new container from the new image
sudo docker run -d -p 3000:3000 my-gin-server

# Show logs
sudo docker ps -lq | xargs docker logs
