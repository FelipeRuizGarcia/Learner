# tips

aws cli read profiles from the file `~/.aws/profiles` ,
amplify reads profiles from the file `~/.aws/config` ,

so, make sure to add those


If you add the profile via:

```
aws configure import --profile-prefix
```

the profiles are NOT added to `~/.aws/config` ,

---

Add profiles as < Account > - < user >
``` 
 CUSTOMER_A-felipe
 PLATFORM_ADAPA_ERP-felipe
 ```
use `-` instead of `.`, some tools does not import aws profiles with `.` properly.

---

#### Import CSV

https://awscli.amazonaws.com/v2/documentation/api/latest/reference/configure/import.html#examples

```
aws configure import --csv
```

Considerate the next workarounds

```
dos2unix ci-dev-fix.Felipe_accessKeys.csv
    change the encoding of the CSV file from utf8bom to utf8

    re-save the file in a plain text editor with User Name header added

```
https://github.com/aws/aws-cli/issues/7721#issuecomment-1469206388



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

