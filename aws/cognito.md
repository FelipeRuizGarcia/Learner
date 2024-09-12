# cognito

```
aws cognito-identity list-identity-pools --max-results 10 aws cognito-identity list-identity-pools --max-results 10


aws cognito-idp list-user-pools --max-results 10


aws cognito-idp list-users --user-pool-id us-east-1_XXX
```

---

https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-scenarios.html#scenario-basic-user-pool

https://docs.aws.amazon.com/es_es/cognito/latest/developerguide/cognito-user-identity-pools.html

https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow.html

### React Sample Apps for Cognito Authentication Patterns

https://github.com/aws-samples/amazon-cognito-authentication-sample-react-app

### How to force reset `"UserStatus": "FORCE_CHANGE_PASSWORD"`

NotAuthorizedException: Temporary password has expired and must be reset by an administrator.
An error occurred (NotAuthorizedException) when calling the
AdminResetUserPassword operation: User password cannot be reset in the current state.

```
aws cognito-idp admin-set-user-password --user-pool-id us-east-Z --username d4f3669718 --password "HelloWorld" --permanent
```
