# terraform-github-validation

A collection of modules used to validate GitHub resource configurations using Terraform [Checks](https://developer.hashicorp.com/terraform/tutorials/configuration-language/checks).

> **Note**:
> Terraform Checks were released in Terraform 1.5.0.  This module requires Terraform 1.5.0 or later.

## Usage

To validate a GitHub organization's configuration, call the module in your Terraform configuration and specify the configuration options you expect.  Checks for variables not explicitly set will assume the settings from GitHub are desirable.

```hcl
module "github_organization_checks" {
  source = "garnertb/terraform-github-checks//modules/organization"
  org_name = "garnertb-io"
  advanced_security_enabled_for_new_repositories = false
  dependabot_alerts_enabled_for_new_repositories = true
}
```
