# Build RPM packages

https://rpm-packaging-guide.github.io/

### Python Distro package

https://docs.fedoraproject.org/en-US/packaging-guidelines/Python/#_distro_wide_guidelines

https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9/html/installing_and_using_dynamic_programming_languages/assembly_packaging-python-3-rpms_installing-and-using-dynamic-programming-languages

---

#### install rpmbuild package according your linux red-hat distro ...
`# dnf install ... `

---

#### create a rpmbuild tree
`$ rpmdev-setuptree `

---

#### clean the rpmbuild tree
`$ rpmdev-wipetree`

---

#### extract the srpm contect
`$ rpm2cpio openssh-7.4p1-12.el7_4.src.rpm | cpio -idmv `

---

#### download the source tarball from specfile
NOTE: check if the requires ( multiple) sources are download correctly
`$ spectool -g openssh.spec `

---

#### build a srpm from specfile and src tarball
##### NOTE: check all the patchs are in SOURCE dir
##### NOTE: The srpm will be builded for your current Os ( fc, el ... )
`$ rpmbuild -bs openssh.spec `

---

