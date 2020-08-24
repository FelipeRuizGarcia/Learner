#### install rpmbuild package according your linux red-hat distro ...
`# dnf install ... `

#### create a rpmbuild tree
`$ rpmdev-setuptree `

#### clean the rpmbuild tree
`$ rpmdev-wipetree`

#### extract the srpm contect
`$ rpm2cpio openssh-7.4p1-12.el7_4.src.rpm | cpio -idmv `

#### download the source tarball from specfile
##### NOTE: check if the requires ( multiple) sources are download correctly
`$ spectool -g openssh.spec `

#### build a srpm from specfile and src tarball
##### NOTE: check all the patchs are in SOURCE dir
##### NOTE: The srpm will be builded for your current Os ( fc, el ... )
`$ rpmbuild -bs openssh.spec `
