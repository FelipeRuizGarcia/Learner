
## Nuking
Sometimes the both tools does not delete S3 buckets correctly, still debugging ...

---

A tool for cleaning up your cloud accounts by nuking (deleting) all resources within it.
<br>
https://github.com/rebuy-de/aws-nuke

* Does not requires add the aws profile, use access key instead.
* requires set an alias in the AWS account ... 

```
./aws-nuke-v2.21.2-linux-amd64 -c nuke-config.yml --profile THE-AWS-PROFILE --no-dry-run --force

```

---

https://github.com/gruntwork-io/cloud-nuke

* requires add the aws profile.

```
$ brew upgrade cloud-nuke
$ cloud-nuke aws --region us-east-1 global --resource-type s3 --force   
```



---

## Costs

 Cloud cost estimates for Terraform in pull requestsmoneybagchart_with_downwards_trend Love your cloud bill!
 <br>
https://github.com/infracost/infracost


## EKS

Runs checks to see if an EKS cluster follows EKS Best Practices. 
<br>
https://github.com/aws-samples/hardeneks
