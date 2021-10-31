## Fedora Handling Packages
` sudo rpm --install my.rpm --force ` To overwrite and force the pkg instalation

#### Add the Epel Repo packages to dnf/yum
` dnf install epel-release  -y `


#### Making dnf/yum Not Update Certain Packages
```
/etc/dnf/dnf.conf:
exclude=kernel* nss nss-*
```
https://www.systutorials.com/making-dnf-yum-not-update-certain-packages/

### Add the dev group packages
##### Fedora/Centos:
` dnf groupinstall "Development Tools" -y `

##### Ubuntu/Debian:
` apt-get install build-essential `
