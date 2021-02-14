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




### Advanced | Under Development
The goal of this appendice is discover how to attach the working directory 
to the build docker image to avoid build the image every time and test the changes
in the same container quickly.

There are three images that are launched:
Debugging the codebuild_script ( with bash -x ~/codebuild_script ... ) , the script generated the command to launch the master instance that is the `amazon/aws-codebuild-local:latest`. We do not have the source code ( Dockerfile of that container, we only are able to pull the container from the repo ).

The command generated is "similar to"

```
 eval docker run --name master -it -v /var/run/docker.sock:/var/run/docker.sock -e '"IMAGE_NAME=aws/codebuild/standard:4.0"' -e '"ARTIFACTS=/Users/pipo/ORDER/org/repo/"' -e '"SOURCE=/Users/pipo/ORDER/org/repo"' -e '"BUILDSPEC=/Users/pipo/ORDER/org/repo/api/buildspec-testing.yml"' -e '"MOUNT_SOURCE_DIRECTORY=TRUE"' -e '"DOCKER_PRIVILEGED_MODE=TRUE"' -e '"INITIATOR=pipo"' amazon/aws-codebuild-local:latest
```

We can see that it is communicating to the Docker Daemon `docker.sock`.
The master image is the  amazon/aws-codebuild-local:latest, and it orchestrated the build agent that is the standart container.
Such as the below table. ( $docker ps )

```
                                     COMMAND                  CREATED          STATUS          PORTS                     NAMES
aws/codebuild/standard:4.0          "sh -c 'while [ ! -f…"   37 seconds ago   Up 34 seconds                             agent-resources_build_1
amazon/aws-codebuild-local:latest   "local_build.sh"         37 seconds ago   Up 36 seconds   0.0.0.0:55018->3000/tcp   agent-resources_agent_1
amazon/aws-codebuild-local:latest   "local_build.sh"         39 seconds ago   Up 38 seconds                             master

```

##### Inspect the aws-codebuild-local

Inspecting the master container, we can see that this is handled by docker-compose, and those script arguments are shared as environment variables.

```
 docker run -it --entrypoint bash amazon/aws-codebuild-local:latest
bash-4.2# ls
agent-resources
bash-4.2# ls /
LocalBuild  bin  boot  dev  etc  home  lib  lib64  local  media  mnt  opt  proc  root  sbin  selinux  srv  sys  tmp  usr  var
bash-4.2# cd agent-resources/
bash-4.2# ls -a
.  ..  bin  docker-compose-mount-src-dir.yml  docker-compose.yml  local-build-config.yml  start
bash-4.2# env



```

also you can check the container details with `$ docker inspect #idcontainer `

In the normal state of the master container, we can see that

```
191             "WorkingDir": "/LocalBuild",
192             "Entrypoint": [
193                 "local_build.sh"
194             ],

```
there is a local_build.sh script that perform the docker-compose actions.

the script is at 

``` 
bash-4.2# command -v local_build.sh
/usr/local/bin/local_build.sh
bash-4.2# 

```

