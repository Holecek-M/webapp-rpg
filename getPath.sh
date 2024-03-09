#!/bin/bash

# Get the IP address of the host machine
ip=$(ip addr | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | grep -v '127.0.0.1' | head -n 1)

# Define the port number
port=3000

# Print the browser URL
echo "Browser URL: http://$ip:$port"