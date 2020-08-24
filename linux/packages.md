#### Add the dev group packages
##### Fedora/Centos:
` dnf groupinstall "Development Tools" -y `

##### Ubuntu/Debian:
` apt-get install build-essential `

#### Add the Epel Repo packages to dnf/yum
` dnf install epel-release  -y `
