variable "identity_source_users" {
  description = <<EOT
Map of identity_source_users, attributes below
Required:
    - id
    - identity_source_id
Optional:
    - profile (block):
        - email (optional)
        - first_name (optional)
        - home_address (optional)
        - last_name (optional)
        - mobile_phone (optional)
        - second_email (optional)
        - user_name (optional)
EOT

  type = map(object({
    id                 = string
    identity_source_id = string
    profile = optional(list(object({
      email        = optional(string)
      first_name   = optional(string)
      home_address = optional(string)
      last_name    = optional(string)
      mobile_phone = optional(string)
      second_email = optional(string)
      user_name    = optional(string)
    })))
  }))
}

