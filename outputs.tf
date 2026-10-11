output "identity_source_users_created" {
  description = "Map of created values across all identity_source_users, keyed the same as var.identity_source_users except keys with no created are omitted"
  value       = { for k, v in okta_identity_source_user.identity_source_users : k => v.created if v.created != null && length(v.created) > 0 }
}
output "identity_source_users_id" {
  description = "Map of id values across all identity_source_users, keyed the same as var.identity_source_users except keys with no id are omitted"
  value       = { for k, v in okta_identity_source_user.identity_source_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_source_users_identity_source_id" {
  description = "Map of identity_source_id values across all identity_source_users, keyed the same as var.identity_source_users except keys with no identity_source_id are omitted"
  value       = { for k, v in okta_identity_source_user.identity_source_users : k => v.identity_source_id if v.identity_source_id != null && length(v.identity_source_id) > 0 }
}
output "identity_source_users_last_updated" {
  description = "Map of last_updated values across all identity_source_users, keyed the same as var.identity_source_users except keys with no last_updated are omitted"
  value       = { for k, v in okta_identity_source_user.identity_source_users : k => v.last_updated if v.last_updated != null && length(v.last_updated) > 0 }
}
output "identity_source_users_profile" {
  description = "Map of profile values across all identity_source_users, keyed the same as var.identity_source_users except keys with no profile are omitted"
  value       = { for k, v in okta_identity_source_user.identity_source_users : k => v.profile if v.profile != null && length(v.profile) > 0 }
}

