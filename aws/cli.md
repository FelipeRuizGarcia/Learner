Add profiles as < Account > . < user >
``` 
 CUSTOMER_A.felipe
 PLATFORM_ADAPA_ERP.felipe
 ```

---

List all profiles
```
 aws configure list-profiles
 aws configure list
```
 
https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html

---

The CLI include different commands for the service, and their configs:

Example:
  * https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3/index.html
  * https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3api/index.html
  * https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3control/index.html



---

Update console pass by cli

```
aws iam update-login-profile --user-name felipe --password
```


---

### Auto-prompt features

https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-prompting.html#cli-usage-auto-prompt-features

https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html#envvars-list-aws_cli_auto_prompt

