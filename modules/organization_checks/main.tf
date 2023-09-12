terraform {
  required_version = ">=1.5.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = ">=5.35.0"
    }
  }
}

data "github_organization" "org" {
  name = var.org_name
}

locals {
  org = data.github_organization.org
}


check "members_can_fork_private_repositories" {
  assert {
    condition     = local.org.members_can_fork_private_repositories == coalesce(var.members_can_fork_private_repositories, local.org.members_can_fork_private_repositories)
    error_message = "organization.members_can_fork_private_repositories failed for ${local.org.orgname}"
  }
}

check "advanced_security_enabled_for_new_repositories" {
  assert {
    condition     = local.org.advanced_security_enabled_for_new_repositories == coalesce(var.advanced_security_enabled_for_new_repositories, local.org.advanced_security_enabled_for_new_repositories)
    error_message = "organization.advanced_security_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "default_repository_permission" {
  assert {
    condition     = local.org.default_repository_permission == coalesce(var.default_repository_permission, local.org.default_repository_permission)
    error_message = "organization.default_repository_permission failed for ${local.org.orgname}"
  }
}

check "dependabot_alerts_enabled_for_new_repositories" {
  assert {
    condition     = local.org.dependabot_alerts_enabled_for_new_repositories == coalesce(var.dependabot_alerts_enabled_for_new_repositories, local.org.dependabot_alerts_enabled_for_new_repositories)
    error_message = "organization.dependabot_alerts_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "dependabot_security_updates_enabled_for_new_repositories" {
  assert {
    condition     = local.org.dependabot_security_updates_enabled_for_new_repositories == coalesce(var.dependabot_security_updates_enabled_for_new_repositories, local.org.dependabot_security_updates_enabled_for_new_repositories)
    error_message = "organization.dependabot_security_updates_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "dependency_graph_enabled_for_new_repositories" {
  assert {
    condition     = local.org.dependency_graph_enabled_for_new_repositories == coalesce(var.dependency_graph_enabled_for_new_repositories, local.org.dependency_graph_enabled_for_new_repositories)
    error_message = "organization.dependency_graph_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "members_allowed_repository_creation_type" {
  assert {
    condition     = local.org.members_allowed_repository_creation_type == coalesce(var.members_allowed_repository_creation_type, local.org.members_allowed_repository_creation_type)
    error_message = "organization.members_allowed_repository_creation_type failed for ${local.org.orgname}"
  }
}

check "members_can_create_internal_repositories" {
  assert {
    condition     = local.org.members_can_create_internal_repositories == coalesce(var.members_can_create_internal_repositories, local.org.members_can_create_internal_repositories)
    error_message = "organization.members_can_create_internal_repositories failed for ${local.org.orgname}"
  }
}

check "members_can_create_pages" {
  assert {
    condition     = local.org.members_can_create_pages == coalesce(var.members_can_create_pages, local.org.members_can_create_pages)
    error_message = "organization.members_can_create_pages failed for ${local.org.orgname}"
  }
}

check "members_can_create_private_pages" {
  assert {
    condition     = local.org.members_can_create_private_pages == coalesce(var.members_can_create_private_pages, local.org.members_can_create_private_pages)
    error_message = "organization.members_can_create_private_pages failed for ${local.org.orgname}"
  }
}

check "members_can_create_private_repositories" {
  assert {
    condition     = local.org.members_can_create_private_repositories == coalesce(var.members_can_create_private_repositories, local.org.members_can_create_private_repositories)
    error_message = "organization.members_can_create_private_repositories failed for ${local.org.orgname}"
  }
}

check "members_can_create_public_pages" {
  assert {
    condition     = local.org.members_can_create_public_pages == coalesce(var.members_can_create_public_pages, local.org.members_can_create_public_pages)
    error_message = "organization.members_can_create_public_pages failed for ${local.org.orgname}"
  }
}

check "members_can_create_public_repositories" {
  assert {
    condition     = local.org.members_can_create_public_repositories == coalesce(var.members_can_create_public_repositories, local.org.members_can_create_public_repositories)
    error_message = "organization.members_can_create_public_repositories failed for ${local.org.orgname}"
  }
}

check "members_can_create_repositories" {
  assert {
    condition     = local.org.members_can_create_repositories == coalesce(var.members_can_create_repositories, local.org.members_can_create_repositories)
    error_message = "organization.members_can_create_repositories failed for ${local.org.orgname}"
  }
}

check "secret_scanning_enabled_for_new_repositories" {
  assert {
    condition     = local.org.secret_scanning_enabled_for_new_repositories == coalesce(var.secret_scanning_enabled_for_new_repositories, local.org.secret_scanning_enabled_for_new_repositories)
    error_message = "organization.secret_scanning_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "secret_scanning_push_protection_enabled_for_new_repositories" {
  assert {
    condition     = local.org.secret_scanning_push_protection_enabled_for_new_repositories == coalesce(var.secret_scanning_push_protection_enabled_for_new_repositories, local.org.secret_scanning_push_protection_enabled_for_new_repositories)
    error_message = "organization.secret_scanning_push_protection_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "two_factor_requirement_enabled" {
  assert {
    condition     = local.org.two_factor_requirement_enabled == coalesce(var.two_factor_requirement_enabled, local.org.two_factor_requirement_enabled)
    error_message = "organization.two_factor_requirement_enabled failed for ${local.org.orgname}"
  }
}

check "web_commit_signoff_required" {
  assert {
    condition     = local.org.web_commit_signoff_required == coalesce(var.web_commit_signoff_required, local.org.web_commit_signoff_required)
    error_message = "organization.web_commit_signoff_required failed for ${local.org.orgname}"
  }
}
