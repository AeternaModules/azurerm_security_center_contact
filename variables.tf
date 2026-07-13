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
  # --- Unconfirmed validation candidates, derived from azurerm_security_center_contact's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: email
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: phone
  #   condition: length(value) > 0
  #   message:   must not be empty
}

