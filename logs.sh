#!/bin/bash

# Get the ID of the first running container
container_id=$(sudo docker ps -q | head -n 1)

if [ -z "$container_id" ]; then
    echo "No running containers found, skipping clean-up"
else
    # Show the log
    echo "Container ID: " "$container_id"
    sudo docker ps -lq | xargs docker logs
fi
