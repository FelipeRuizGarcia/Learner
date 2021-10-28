https://www.packer.io/

https://learn.hashicorp.com/packer



#### Packer + Terraform
https://learn.hashicorp.com/tutorials/terraform/packer


### Best Practices

##### Env Variables
In docker source, `Changes` ( like ENV variables ) are writed once the image is commited to Docker,
So, to overwrite variables in the provisioning stage, use `environment_vars`
https://www.packer.io/guides/hcl/variables#using-variables-and-locals-in-configuration


----


`pull=false` to use a local image / artifact 

----

**AMI's**
AWS AMI names must be unique: In your packer variables,
use `locals` block to create a formatted timestamp to keep your AMI name unique.

```
locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "") }
```


### References

https://www.sentiatechblog.com/ec2-image-builder-vs-packer
