# Docker containers

## Moby containers

Use moby instead of docker-ce

```
# dnf install moby-engine

```

## NVIDIA Container Toolkit

https://github.com/NVIDIA/nvidia-container-toolkit

https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#installing-with-yum-or-dnf

##### attach to running container

`docker exec -it < short hash > bash`

exit of a contianer without stop it :
in other words, we turn the interactive mode and say
to the daemon "hey, return me back to my shell
`ctrl + p -> ctrl + q `

### Docker Desktop

#### Enable WSL integration

Settings > Resources > WSL Integration > select the distro and enable it
