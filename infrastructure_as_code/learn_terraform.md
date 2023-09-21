
# Resources to learn and get the Terraform certifications

### Pro Tips
`-auto-approve`

### Terraform Examples

https://github.com/jetbrains-infra/terraform-aws-cognito-google-oauth-with-custom-domain

https://github.com/jetbrains-infra/terraform-aws-rds-mysql

https://github.com/jetbrains-infra/terraform-aws-oauth-jwt-edge-lambda

https://github.com/jetbrains-infra/terraform-aws-static-website



## ` Cert Quiz | Review | Analysis | Community ` 

### Introduction

https://www.terraform.io/docs/language/index.html

https://www.terraform.io/docs/language/providers/requirements.html

https://learn.hashicorp.com/tutorials/terraform/install-cli


### Getting started Quickly with AWS

https://learn.hashicorp.com/tutorials/terraform/aws-build


https://learn.hashicorp.com/tutorials/terraform/aws-change


https://learn.hashicorp.com/tutorials/terraform/infrastructure-as-code




###  Key Concepts

Terraform State
<br>
https://www.terraform.io/docs/cli/state/index.html

https://www.terraform.io/docs/language/state/index.html


Terraform Import 
<br>
https://www.terraform.io/docs/cli/import/index.html


Terraform Plan
<br>
https://www.terraform.io/docs/cli/commands/plan.html


Terraform Workspace
<br>
https://dzone.com/articles/manage-multiple-environments-with-terraform-worksp


Terraform Functions
<br>
https://www.terraform.io/docs/language/functions/lookup.html


Terraform Variables
https://www.terraform.io/language/values/variables


### Best Practices

```
Do not touch the tfstate file directly, use the Terraform cli.
```

To save the changes on the current state, and you could apply those to know "what change" 
``` 
    terraform plan -out out.terraform 

    terraform apply out.terraform

```
Do not save the terraform.tfvars in the scm.

Define the type variables
Use bvariables to hide secrets


Use Workspace
<br>
https://dzone.com/articles/manage-multiple-environments-with-terraform-worksp

Naming
<br>
https://www.terraform-best-practices.com/naming


https://www.terraform-best-practices.com/code-structure


https://www.terraform-best-practices.com/key-concepts#composition


https://www.terraform-best-practices.com/examples


https://github.com/antonbabenko/terraform-best-practices/tree/master/examples


https://www.terraform-best-practices.com/code-styling


### Running Terraform in Automation
https://learn.hashicorp.com/tutorials/terraform/automate-terraform


### Best Practices Videos

https://www.hashicorp.com/resources/terraform-repository-best-practices


https://youtu.be/HL3TXj6D4Jg


https://youtu.be/bdnH9BMcCUw



### COURSES

https://platzi.com/cursos/devops-terraform/

https://github.com/muchikon/terraform


### Workshops

https://github.com/antonbabenko/terraform-best-practices-workshop



**Terragoat**

https://github.com/bridgecrewio/terragoat/

https://medium.com/bridgecrew/terragoat-vulnerable-by-design-terraform-training-by-bridgecrew-524b50728887




**Non Official References**

https://github.com/shuaibiyy/awesome-terraform



### Tools and Integrations

https://github.com/cloudskiff/driftctl
<br>
Measures infrastructure as code coverage, and tracks infrastructure drift.

https://github.com/infracost/infracost
<br>
Infracost shows cloud cost estimates for infrastructure-as-code projects such as Terraform. It helps DevOps, SRE and developers to quickly see a cost breakdown and compare different options upfront.

https://github.com/iann0036/iamlive
<br>
Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy

https://github.com/runatlantis/atlantis
<br>
Terraform Pull Request Automation

https://github.com/terraform-aws-modules/terraform-aws-atlantis/
<br>
AWS Terraform module which runs Atlantis on AWS Fargate


https://terragrunt.gruntwork.io/
<br>
Terragrunt:  Pure orchestration tool which can be used to orchestrate the entire infrastructure as well as handle dependencies. Terragrunt operates with infrastructure modules and compositions natively, so it reduces duplication of code.


https://www.cloudcraft.co/
<br>
Convert AWS visual diagrams to Terraform infrastructure as code automatically.


https://serverless.tf/
<br>
serverless.tf is an opinionated open-source framework for developing, building, deploying, and securing serverless applications and infrastructures on AWS using Terraform.


pre-commit-terraform
<br>
https://github.com/antonbabenko/pre-commit-terraform


terraform-docs
<br>
https://github.com/terraform-docs/terraform-docs



https://modules.tf/



https://www.terratag.io/



### Testing

https://terratest.gruntwork.io/
<br>
Automated tests for your infrastructure code.
Terratest is a Go library that provides patterns and helper
functions for testing infrastructure, 
with 1st-class support for Terraform, 
Packer, Docker, Kubernetes, AWS, GCP, and more.


#### TDD
https://github.com/joatmon08/tdd-infrastructure
<br>
Examples for Test-Driven Development (TDD) of infrastructure.


#### Testing Infrastructure As Code On 127.0.0.1 with Localstack
https://docs.google.com/presentation/d/1aBtQmkO-LCIxmb0uwbjtPPxS01HOLF5_xqXx_gJ64tY
<br>

https://github.com/kihahu/terraform-modules

https://geekrodion.medium.com/system-testing-localstack-terraforms-37b31ba99310

https://anthony-f-tannous.medium.com/set-up-terraform-cloud-to-work-with-aws-localstack-473d4175596f

https://geekrodion.com/blog/localstack-terraform


### AWS Modules

https://github.com/terraform-aws-modules
Collection of Terraform AWS modules supported by the community



### AWS References


IAM DOC
https://registry.terraform.io/modules/terraform-aws-modules/iam/aws/latest/submodules/iam-account


https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_account_password_policy#max_password_age


### Debug with TF CLI
``` export TF_LOG=debug  ```

#### Graph Terraform
https://www.terraform.io/cli/commands/graph

``` 
    terraform graph | dot -Tsvg > graph.svg
```

#### Articles

TF isnt open sources anymore, instead 
<br>
https://opentofu.org/

https://www.theregister.com/2023/08/11/hashicorp_bsl_licence/
