terraform {
  required_version = ">=1.5.0"
}

data "github_organization" "org" {
  name = var.org_name
}

locals {
  org = data.github_organization.org
}


check "member_priviledges" {
  assert {
    condition     = local.org.members_can_fork_private_repositories == var.members_can_fork_private_repositories
    error_message = "organization.members_can_fork_private_repositories failed for ${local.org.orgname}"
  }
}

check "advanced_security_enabled_for_new_repositories" {
  assert {
    condition     = local.org.advanced_security_enabled_for_new_repositories == var.advanced_security_enabled_for_new_repositories
    error_message = "organization.advanced_security_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "default_repository_permission" {
  assert {
    condition     = local.org.default_repository_permission == var.default_repository_permission
    error_message = "organization.default_repository_permission failed for ${local.org.orgname}"
  }
}

check "dependabot_alerts_enabled_for_new_repositories" {
  assert {
    condition     = local.org.dependabot_alerts_enabled_for_new_repositories == var.dependabot_alerts_enabled_for_new_repositories
    error_message = "organization.dependabot_alerts_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "dependabot_security_updates_enabled_for_new_repositories" {
  assert {
    condition     = local.org.dependabot_security_updates_enabled_for_new_repositories == var.dependabot_security_updates_enabled_for_new_repositories
    error_message = "organization.dependabot_security_updates_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "dependency_graph_enabled_for_new_repositories" {
  assert {
    condition     = local.org.dependency_graph_enabled_for_new_repositories == var.dependency_graph_enabled_for_new_repositories
    error_message = "organization.dependency_graph_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "members_allowed_repository_creation_type" {
  assert {
    condition     = local.org.members_allowed_repository_creation_type == var.members_allowed_repository_creation_type
    error_message = "organization.members_allowed_repository_creation_type failed for ${local.org.orgname}"
  }
}

check "members_can_create_internal_repositories" {
  assert {
    condition     = local.org.members_can_create_internal_repositories == var.members_can_create_internal_repositories
    error_message = "organization.members_can_create_internal_repositories failed for ${local.org.orgname}"
  }
}

check "members_can_create_pages" {
  assert {
    condition     = local.org.members_can_create_pages == var.members_can_create_pages
    error_message = "organization.members_can_create_pages failed for ${local.org.orgname}"
  }
}

check "members_can_create_private_pages" {
  assert {
    condition     = local.org.members_can_create_private_pages == var.members_can_create_private_pages
    error_message = "organization.members_can_create_private_pages failed for ${local.org.orgname}"
  }
}

check "members_can_create_private_repositories" {
  assert {
    condition     = local.org.members_can_create_private_repositories == var.members_can_create_private_repositories
    error_message = "organization.members_can_create_private_repositories failed for ${local.org.orgname}"
  }
}

check "members_can_create_public_pages" {
  assert {
    condition     = local.org.members_can_create_public_pages == var.members_can_create_public_pages
    error_message = "organization.members_can_create_public_pages failed for ${local.org.orgname}"
  }
}

check "members_can_create_public_repositories" {
  assert {
    condition     = local.org.members_can_create_public_repositories == var.members_can_create_public_repositories
    error_message = "organization.members_can_create_public_repositories failed for ${local.org.orgname}"
  }
}

check "members_can_create_repositories" {
  assert {
    condition     = local.org.members_can_create_repositories == var.members_can_create_repositories
    error_message = "organization.members_can_create_repositories failed for ${local.org.orgname}"
  }
}

check "members_can_fork_private_repositories" {
  assert {
    condition     = local.org.members_can_fork_private_repositories == var.members_can_fork_private_repositories
    error_message = "organization.members_can_fork_private_repositories failed for ${local.org.orgname}"
  }
}

check "secret_scanning_enabled_for_new_repositories" {
  assert {
    condition     = local.org.secret_scanning_enabled_for_new_repositories == var.secret_scanning_enabled_for_new_repositories
    error_message = "organization.secret_scanning_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "secret_scanning_push_protection_enabled_for_new_repositories" {
  assert {
    condition     = local.org.secret_scanning_push_protection_enabled_for_new_repositories == var.secret_scanning_push_protection_enabled_for_new_repositories
    error_message = "organization.secret_scanning_push_protection_enabled_for_new_repositories failed for ${local.org.orgname}"
  }
}

check "two_factor_requirement_enabled" {
  assert {
    condition     = local.org.two_factor_requirement_enabled == var.two_factor_requirement_enabled
    error_message = "organization.two_factor_requirement_enabled failed for ${local.org.orgname}"
  }
}

check "web_commit_signoff_required" {
  assert {
    condition     = local.org.web_commit_signoff_required == var.web_commit_signoff_required
    error_message = "organization.web_commit_signoff_required failed for ${local.org.orgname}"
  }
}
