variable "members_can_fork_private_repositories" {
  type    = bool
  default = true
}

variable "members_can_create_public_repositories" {
  type    = bool
  default = true
}

variable "members_can_create_private_repositories" {
  type    = bool
  default = true
}

variable "members_can_create_repositories" {
  type    = bool
  default = true
}

variable "members_can_create_pages" {
  type    = bool
  default = true
}

variable "members_can_create_private_pages" {
  type    = bool
  default = true
}

variable "members_can_create_public_pages" {
  type    = bool
  default = true
}

variable "members_can_create_internal_repositories" {
  type    = bool
  default = false
}

variable "secret_scanning_enabled_for_new_repositories" {
  type    = bool
  default = false
}

variable "members_can_delete_repositories" {
  type    = bool
  default = true
}

variable "members_can_delete_issues" {
  type    = bool
  default = true
}

variable "members_can_delete_gists" {
  type    = bool
  default = true
}

variable "members_can_delete_packages" {
  type    = bool
  default = true
}

variable "members_can_delete_topics" {
  type    = bool
  default = true
}

variable "members_can_disable_pages" {
  type    = bool
  default = true
}

variable "members_can_edit_actions" {
  type    = bool
  default = true
}

variable "members_can_edit_packages" {
  type    = bool
  default = true
}

variable "members_can_edit_topics" {
  type    = bool
  default = true
}

variable "members_can_view_dependency_insights" {
  type    = bool
  default = true
}

variable "members_can_view_pages" {
  type    = bool
  default = true
}

variable "members_allowed_repository_creation_type" {
  type    = string
  default = "all"
}

variable "org_name" {
  type = string
}

variable "default_repository_permission" {
  type    = string
  default = "read"
}

variable "dependabot_alerts_enabled_for_new_repositories" {
  type    = bool
  default = true
}

variable "dependabot_security_updates_enabled_for_new_repositories" {
  type    = bool
  default = true
}

variable "dependency_graph_enabled_for_new_repositories" {
  type    = bool
  default = true
}

variable "advanced_security_enabled_for_new_repositories" {
  type    = bool
  default = true
}

variable "two_factor_requirement_enabled" {
  type    = bool
  default = true
}

variable "web_commit_signoff_required" {
  type    = bool
  default = true
}

variable "secret_scanning_push_protection_enabled_for_new_repositories" {
  type    = bool
  default = true
}