# K8


### Video Courses
https://youtu.be/X48VuDVv0do

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

### Istio

```
brew install istioctl
```


--

### Tools

https://k8slens.dev/
<br>
IDE to take control of your Kubernetes clusters. 


#### Helm



##### Helmfile

https://github.com/roboll/helmfile/blob/master/docs/writing-helmfile.md
<br>
Best Practices writing helmfiles

https://lyz-code.github.io/blue-book/devops/helmfile/


https://github.com/roboll/helmfile




### containers

##### attach to running container 
``` docker exec -it < short hash > bash ```

exit of a contianer without stop it :
in other words, we turn the interactive mode and say
to the daemon "hey, return me back to my shell
``` ctrl + p -> ctrl + q  ```


