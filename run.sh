#!/bin/bash

# Build docker image
echo "Docker image creation started - `date`"
docker build -t oom:latest . > /dev/null
# Run docker image
echo "Starting docker container"
docker run -h java-oom-simulator --mount type=bind,source="$(pwd)"/dumps,target=/dumps oom:latest
# Check dumps folder
echo "dumps folder contain the following files:"
ls -la dumps/
