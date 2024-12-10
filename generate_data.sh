#!/bin/env bash

docker pull openjdk:8-jdk-alpine


container_id=$(docker run -d openjdk:8-jdk-alpine sh -c "while :; do sleep 1; done")

docker cp ./Tools ${container_id}:/Tools


docker exec -i ${container_id} /bin/sh -c "
  mkdir /output &&
  cd /Tools &&
  java -jar DIGen.jar -o /output -sf $1
"

# Define the generated files local directory path
dir_path="tpc-di-data"

# Check if the directory exists
if [ -d "$dir_path" ]; then
  # Remove the directory and its contents
  rm -rf "$dir_path"
fi

# Create the directory
mkdir "$dir_path"

# Copy the contents of the output folder to dir_path
docker cp ${container_id}:/output/. ${dir_path}

docker stop ${container_id}

docker rm ${container_id}