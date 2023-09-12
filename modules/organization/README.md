# GitHub Organization

## Usage

Call the module in your Terraform configuration and specified the configuration options you expect.  Checks for variables not explicitly set will assume the settings from GitHub are desirable.

```hcl
module "github_org_checks" {
  source = "garnertb/terraform-github-checks//modules/organization@v1"
  org_name = "garnertb-io"
  advanced_security_enabled_for_new_repositories = false
  dependabot_alerts_enabled_for_new_repositories = true
}
```

## GitHub App Permission Scopes

If you are using a [GitHub App](https://docs.github.com/en/apps/creating-github-apps/about-creating-github-apps) to authenticate with the GitHub API, you will need to grant the following permission scopes:

* `Administration`: read-only
* `Members`: read-only
