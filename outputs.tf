output "identity_source_users_created" {
  description = "Map of created values across all identity_source_users, keyed the same as var.identity_source_users"
  value       = { for k, v in okta_identity_source_user.identity_source_users : k => v.created }
}
output "identity_source_users_id" {
  description = "Map of id values across all identity_source_users, keyed the same as var.identity_source_users"
  value       = { for k, v in okta_identity_source_user.identity_source_users : k => v.id }
}
output "identity_source_users_identity_source_id" {
  description = "Map of identity_source_id values across all identity_source_users, keyed the same as var.identity_source_users"
  value       = { for k, v in okta_identity_source_user.identity_source_users : k => v.identity_source_id }
}
output "identity_source_users_last_updated" {
  description = "Map of last_updated values across all identity_source_users, keyed the same as var.identity_source_users"
  value       = { for k, v in okta_identity_source_user.identity_source_users : k => v.last_updated }
}
output "identity_source_users_profile" {
  description = "Map of profile values across all identity_source_users, keyed the same as var.identity_source_users"
  value       = { for k, v in okta_identity_source_user.identity_source_users : k => v.profile }
}

