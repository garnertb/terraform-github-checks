terraform {
  required_version = ">=1.5.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = ">=5.35.0"
    }
  }
}

module "github_org_checks" {
  source = "../modules/organization_checks"
  org_name = "garnertb-io"
  advanced_security_enabled_for_new_repositories = false
  dependabot_alerts_enabled_for_new_repositories = true
  dependabot_security_updates_enabled_for_new_repositories = false
  dependency_graph_enabled_for_new_repositories = true
  members_can_create_internal_repositories = false
  members_can_create_pages = true
  members_can_create_private_pages = true
  members_can_create_private_repositories = true
  members_can_create_public_pages = true
  members_can_create_public_repositories = true
  members_can_create_repositories = true
  members_can_delete_gists = true
  members_can_delete_issues = true
  members_can_delete_packages = true
  members_can_delete_repositories = true
  members_can_delete_topics = true
  members_can_disable_pages = true
  members_can_edit_actions = true
  members_can_edit_packages = true
  members_can_edit_topics = true
  members_can_fork_private_repositories = true
  members_can_view_dependency_insights = true
  members_can_view_pages = true
  secret_scanning_enabled_for_new_repositories = false
  secret_scanning_push_protection_enabled_for_new_repositories = false
  two_factor_requirement_enabled = false
  web_commit_signoff_required = false
}

