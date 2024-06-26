## New Amplify Gen 2 with TS

https://docs.amplify.aws/gen2/how-amplify-works/concepts/

#### aws appsync / graphql

Best Practices

https://docs.amplify.aws/react/build-a-backend/graphqlapi/best-practice/warehouse-management/

---

## Amplify Gen 1

#### CLI

https://docs.amplify.aws/javascript/tools/cli/

#### aws appsync / graphql

https://docs.amplify.aws/javascript/prev/build-a-backend/graphqlapi/

https://docs.amplify.aws/react/prev/build-a-backend/graphqlapi/api-graphql-concepts/

### Migrate v5 to v6

https://docs.amplify.aws/javascript/build-a-backend/troubleshooting/migrate-from-javascript-v5-to-v6/

### Tips and tricks

replacing `aws-export.js` with `src/amplifyconfiguration.json`

---

If you try

```
amplify pull --appId WRONG_ID --envName test
```

with the wrong aws profile credentials, it will raise
an `opening link` to confirm or to confirm login

### Files and Folders

https://docs.amplify.aws/javascript/tools/cli/reference/files/#amplifyconfigurationjson

```
AWS Amplify gen 1 assumes CommonJS
```

## Tutorials

[https://amplify.aws/learn/courses/Fullstack-for-Frontend-Developers-e7319/lessons/1
](https://amplify.aws/learn/courses/Fullstack-for-Frontend-Developers-e7319)

aws-samples/aws-amplify-stepfunctions-example: Learn how to extend AWS Amplify resources with CDK v2 with this example that deploys a Step Functions workflow triggered via an Amplify-managed AppSync API
https://github.com/aws-samples/aws-amplify-stepfunctions-example

aws-samples/retail-demo-store: AWS Retail Demo Store is a sample retail web application and workshop platform demonstrating how AWS infrastructure and services can be used to build compelling customer experiences for eCommerce, retail, and digital marketing use-cases
https://github.com/aws-samples/retail-demo-store

aws-samples/aws-real-user-monitoring-amplifyapps: Example of how to instrument an AWS Amplify React application with Amazon CloudWatch RUM to monitor the experience of end users
https://github.com/aws-samples/aws-real-user-monitoring-amplifyapps

aws-samples/pizza-delivery-tracker: Pizza Delivery Tracker using AWS Amplify, Amazon Location Service, AWS AppRunner, and AWS Fargate.
https://github.com/aws-samples/pizza-delivery-tracker

awslabs/amplify-graphql-seed-plugin: This is an Amplify Plugin which helps your to seed the databases of your Amplify projects with data using an AppSync GraphQL API. It can be used to seed local mock databases, as well as remote databases, e.g. for testing purposes. This plugin allows you to customize and auto-generate mock data, including data with relationships between models.
https://github.com/awslabs/amplify-graphql-seed-plugin

## Examples and Workshops

## CI / CD

https://docs.aws.amazon.com/amplify/latest/userguide/deploy-backend.html#step-3-connect-backend-to-frontend

### Frontend Use Rest APIS

There are 2 ways of use a Rest API with Amplify, describe below

#### With Amplify ecosystem

Amplify handles the providing the Backend amplify context.

https://docs.amplify.aws/start/getting-started/setup/q/integration/react/#initialize-a-new-backend

https://docs.amplify.aws/start/getting-started/data-model/q/integration/react/#connect-frontend-to-api

https://docs.amplify.aws/lib/restapi/fetch/q/platform/js/

#### Custom Rest Endpoints

Amplify libs allows setup a custom Rest API to your Frontend:

https://docs.amplify.aws/lib/restapi/getting-started/q/platform/js/#configure-your-application

https://docs.amplify.aws/start/getting-started/setup/q/integration/react/#initialize-a-new-backend

https://docs.amplify.aws/lib/restapi/fetch/q/platform/js/\

### Graphql whit Amplify

https://docs.amplify.aws/javascript/tools/cli/graphqlapi/directives-reference/

https://docs.amplify.aws/cli/graphql/overview/#update-schema

#### Amplify Lambda Layers

https://aws.amazon.com/blogs/mobile/how-to-use-lambda-layers-with-the-amplify-cli/

https://docs.amplify.aws/cli/function/layers/

---

https://docs.amplify.aws/lib/auth/manageusers/q/platform/js/#managing-security-tokens

https://docs.amplify.aws/lib/auth/social/q/platform/js/

https://ui.docs.amplify.aws/react/connected-components/authenticator

#### Sandbox Live

https://sandbox.amplifyapp.com/getting-started

#### Login Live Demo

https://ui.docs.amplify.aws/react/connected-components/authenticator

---

#### How to Process an AWS Cognito Authorization Code Grant using AWS Amplify

https://medium.com/codex/how-to-process-an-aws-cognito-authorization-code-grant-using-aws-amplify-b49d9ee052ca

https://github.com/aws-amplify/amplify-js/issues/6236

### Use existing Cognito resources for your Amplify API, Storage and more

https://aws.amazon.com/blogs/mobile/use-existing-cognito-resources-for-your-amplify-api-storage-and-more/

#### ammplify samples

https://github.com/aws-amplify

---

### Amplify UI COMPONENTS

https://ui.docs.amplify.aws/react/components

---

#### TROUBLESHOOTING

https://docs.amplify.aws/cli/project/troubleshooting/
