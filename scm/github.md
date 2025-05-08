# Github

### Tokens

You can clone repos with tokens, instead of user/pass

```
https://oauth:$GITHUB_TOKEN@github.com/FelipeRuizGarcia/Learner
```

## Roles

https://docs.github.com/en/enterprise-server@3.14/organizations/managing-peoples-access-to-your-organization-with-roles/roles-in-an-organization

https://docs.github.com/en/organizations/managing-peoples-access-to-your-organization-with-roles/roles-in-an-organization

## GH CLI

https://cli.github.com/

https://github.com/cli/cli

## Github Actions

https://docs.github.com/en/actions/learn-github-actions/introduction-to-github-actions

Event-driver:

Event > Workflow > Job > Steps ( Action or shell command )

Good practice:
Separate your common steps in Actions, outside the workflow file at: `.github/actions/`

#### Key Topics

https://docs.github.com/en/actions/sharing-automations/reusing-workflows

### gh client

run workflows directly with the `gh workflow run X`

### Debugging

-   https://docs.github.com/en/enterprise-server@3.14/actions/monitoring-and-troubleshooting-workflows/troubleshooting-workflows/about-troubleshooting-workflows

-   enable debug
    https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/troubleshooting-workflows/enabling-debug-logging#enabling-step-debug-logging

-   set debug msgs
    https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/workflow-commands-for-github-actions#setting-a-debug-message

### Cache in Github Actions

https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/caching-dependencies-to-speed-up-workflows#using-the-cache-action

### Events that trigger workflows

https://docs.github.com/en/actions/writing-workflows/choosing-when-your-workflow-runs/events-that-trigger-workflows

https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions#onworkflow_runbranchesbranches-ignore

### Github Actions Blogs + Articles

https://blog.mikepenz.dev/a/manage-secrets-ga
https://blog.mikepenz.dev/a/github-actions-context
https://blog.mikepenz.dev/a/release-artifacts-ga

#### Github Actions Tutorials

Github Actions Tutorial
<br>
https://www.linkedin.com/learning/learning-github-actions-2/

---

https://github.com/pre-commit/pre-commit-hooks

## Miscellaneous

#### Organization Workflow

https://github.com/z-shell/.github/
