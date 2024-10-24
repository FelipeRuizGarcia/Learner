# K8

### Topics

DaemonSet:
A DaemonSet ensures that a copy of a specific Pod runs on all / some nodes in the cluster.
This is particularly useful for deploying backgroud task like monitoring agents, log collection daemons, or other system-level
that need to run on every node.

### Video Courses

https://youtu.be/X48VuDVv0do

https://youtu.be/DCoBcpOA7W4

https://youtu.be/7bA0gTroJjw

### kubectl

https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-using-native-package-management

Use moby instead of docker-ce

```
# dnf install moby-engine

```

## Clusters

### Kind

https://kind.sigs.k8s.io/
<br>
kind is a tool for running local Kubernetes clusters using Docker container “nodes”.
kind was primarily designed for testing Kubernetes itself, but may be used for local development or CI.

---

### Minikube

https://minikube.sigs.k8s.io/docs/start/

```
brew install minikube

minikube config set driver docker

minikube start --driver=docker

```

--

### Plugins

https://github.com/int128/kubelogin

### Tools

https://github.com/aws/karpenter-provider-aws

https://k8slens.dev/
<br>
IDE to take control of your Kubernetes clusters.

### Istio

```
brew install istioctl
```

### Traefik

https://github.com/traefik/traefik

#### Helm

##### Helmfile

https://github.com/roboll/helmfile/blob/master/docs/writing-helmfile.md
<br>
Best Practices writing helmfiles

https://lyz-code.github.io/blue-book/devops/helmfile/

https://github.com/roboll/helmfile

## Docker containers

### NVIDIA Container Toolkit

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
