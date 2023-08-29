Getting started
<br>
https://aws.amazon.com/organizations/getting-started/

Tutorial
<br>
https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tutorials_basic.html

Best OU practices
<br>
https://aws.amazon.com/blogs/mt/best-practices-for-organizational-units-with-aws-organizations/

### SCPs
<br>
https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps.html

#### SCPs samples

https://github.com/aws-samples/aws-scps-with-terraform

https://github.com/ScaleSec/terraform_aws_scp/tree/main

https://cloudly.engineer/2021/aws-service-control-policies-with-terraform/aws/

### Protips

To avoid loss the access to the root user for the AWS accounts for the team or projects, link those aws accounts to an email alias instead or email list, of email personal email accounts. 

# Best Practices

best practice AWS environment
<br>
https://aws.amazon.com/organizations/getting-started/best-practices/

* Do not create root access key https://docs.aws.amazon.com/accounts/latest/reference/best-practices-root-user.html#bp-root-lock-away-credentials


### SCP's
* Allow List Strategy
* Deny List Strategy

#### Videos

https://youtu.be/uOrq8ZUuaAQ


https://youtu.be/jtKqYM9GjNM


### Example of Org

![image](https://user-images.githubusercontent.com/14207635/132250175-3e1e8e22-8647-41bd-9927-a82ea4d4ce4a.png)

|  ACCOUNT |      DESCRIPTION      |   |
|----------|:-------------:|------:|
| MAIN ROOT | ONLY USED FOR BILLING PURPOSES | The email should be outside of the Org for security purposes.Protect it with MFA | 
