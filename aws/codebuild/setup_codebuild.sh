#!/bin/bash

docker pull amazon/aws-codebuild-local:latest --disable-content-trust=false -q &> /dev/null &

cd ~/
git clone https://github.com/aws/aws-codebuild-docker-images.git
cd aws-codebuild-docker-images
cd ubuntu/standard/4.0
docker build -t aws/codebuild/standard:4.0 . -q &> /dev/null &

# create sym link
cd ../../../local_builds/
ln -s `pwd`/codebuild_build.sh ~/codebuild_build.sh
