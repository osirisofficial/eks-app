#!/bin/sh

# Get IDs of all running containers
RUNNING_CONTAINERS=$(docker ps -q)

if [ -n "$RUNNING_CONTAINERS" ]; then
  echo "Stopping all running containers..."
  docker stop $RUNNING_CONTAINERS

  echo "Removing containers..."
  docker rm $RUNNING_CONTAINERS
else
  echo "No running containers found."
fi

docker image rm 783764591716.dkr.ecr.us-east-1.amazonaws.com/eks-app:latest