https://www.packer.io/

https://learn.hashicorp.com/packer



#### Packer + Terraform
https://learn.hashicorp.com/tutorials/terraform/packer


### Best Practices


**AMI's**
AWS AMI names must be unique: In your packer variables,
use `locals` block to create a formatted timestamp to keep your AMI name unique.

```
locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "") }
```
