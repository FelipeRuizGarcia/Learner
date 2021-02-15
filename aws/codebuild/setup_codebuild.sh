#!/bin/bash

docker pull amazon/aws-codebuild-local:latest --disable-content-trust=false -q &

git clone https://github.com/aws/aws-codebuild-docker-images.git
cd aws-codebuild-docker-images
cd ubuntu/standard/4.0
docker build -t aws/codebuild/standard:4.0 . -q &

# To enter to the standart w
# docker run -it --entrypoint sh aws/codebuild/standard:4.0 -c bash

