variable "security_center_contacts" {
  description = <<EOT
Map of security_center_contacts, attributes below
Required:
    - alert_notifications
    - alerts_to_admins
    - email
    - name
Optional:
    - phone
EOT

  type = map(object({
    alert_notifications = bool
    alerts_to_admins    = bool
    email               = string
    name                = string
    phone               = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.security_center_contacts : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_center_contacts : (
        length(v.email) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_center_contacts : (
        v.phone == null || (length(v.phone) > 0)
      )
    ])
    error_message = "must not be empty"
  }
}

