https://www.packer.io/

https://learn.hashicorp.com/packer



#### Packer + Terraform
https://learn.hashicorp.com/tutorials/terraform/packer


### Best Practices

`pull=false` to use a local image / artifact 

**AMI's**
AWS AMI names must be unique: In your packer variables,
use `locals` block to create a formatted timestamp to keep your AMI name unique.

```
locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "") }
```


### References

https://www.sentiatechblog.com/ec2-image-builder-vs-packer
