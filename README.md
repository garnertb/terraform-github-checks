# terraform-github-validation

A collection of modules used to validate GitHub resource configurations in Terraform.

> **Note**:
> Terraform Checks were released in Terraform 1.5.0.  This module requires Terraform 1.5.0 or later.

## Usage

To validate a GitHub organization's configuration, call the module in your Terraform configuration and specify the configuration options you expect.  Checks for variables not explicitly set will assume the settings from GitHub are desirable.

```hcl
module "validate_github_org_config" {
  source = "garnertb/terraform-github-checks"
  org_name = "garnertb-io"
  advanced_security_enabled_for_new_repositories = false
  dependabot_alerts_enabled_for_new_repositories = true
}
```

## GitHub Authentication and Permissions

### Authenticating

Follow authentication instructions from the [Terraform GitHub Provider](https://registry.terraform.io/providers/integrations/github/latest/docs#authentication) to authenticate with the GitHub API.

### GitHub App

If you are using a [GitHub App](https://docs.github.com/en/apps/creating-github-apps/about-creating-github-apps) to authenticate with the GitHub API, you will need to grant the following permission scopes:

| Permission  | Scope | Use |
|---|---|---|
|Administration  | `read-only` | Used to read the organization's settings. |
|Members         | `read-only` | Used to read the organization's members.  |
