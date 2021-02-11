### Introduction
Constantly I need to build artifacts in codebuild and propagate programs
to debug those in the AWS infra, which take some time (and money $$$ as well)
to see if it will work (or not).

To improve that, we can build those artifacts locally 
and quickly "simulate" the AWS infra in your computer.
This is achieved with Codebuild Agent and LocalStack, 
that uses Docker images for that.

#### Set up the AWS Codebuild Agent in your local



1. Clone the repo and build Codebuild image the image that you desired.

*This process will take some time ( O(1hr) ). In the meantime we gonna continue with the next steps ;)* 

https://github.com/aws/aws-codebuild-docker-images#how-to-build-docker-images


2. In other shell, Pull the Agent Docker image
`docker pull amazon/aws-codebuild-local:latest --disable-content-trust=false`


3. Once, the build of the codebuild image finished, use the codebuild script:

`Pro Tip: Use a symbolic link to the script instead of copy it to the working directory. 
With this approach, you link is pointing to script in the repo.`

https://github.com/aws/aws-codebuild-docker-images/tree/master/local_builds#aws-codebuild-local-builds

Example
``` ~/codebuild_build.sh -i aws/codebuild/standard:4.0 -a ./ -b api/buildspec-testing.yml  ```


_References_

https://docs.aws.amazon.com/codebuild/latest/userguide/use-codebuild-agent.html
