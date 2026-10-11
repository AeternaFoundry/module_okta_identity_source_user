resource "okta_identity_source_user" "identity_source_users" {
  for_each = var.identity_source_users

  id                 = each.value.id
  identity_source_id = each.value.identity_source_id

  dynamic "profile" {
    for_each = each.value.profile != null ? each.value.profile : []
    content {
      email        = profile.value.email
      first_name   = profile.value.first_name
      home_address = profile.value.home_address
      last_name    = profile.value.last_name
      mobile_phone = profile.value.mobile_phone
      second_email = profile.value.second_email
      user_name    = profile.value.user_name
    }
  }
}

