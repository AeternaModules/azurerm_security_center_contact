output "security_center_contacts_id" {
  description = "Map of id values across all security_center_contacts, keyed the same as var.security_center_contacts"
  value       = { for k, v in azurerm_security_center_contact.security_center_contacts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_center_contacts_alert_notifications" {
  description = "Map of alert_notifications values across all security_center_contacts, keyed the same as var.security_center_contacts"
  value       = { for k, v in azurerm_security_center_contact.security_center_contacts : k => v.alert_notifications if v.alert_notifications != null }
}
output "security_center_contacts_alerts_to_admins" {
  description = "Map of alerts_to_admins values across all security_center_contacts, keyed the same as var.security_center_contacts"
  value       = { for k, v in azurerm_security_center_contact.security_center_contacts : k => v.alerts_to_admins if v.alerts_to_admins != null }
}
output "security_center_contacts_email" {
  description = "Map of email values across all security_center_contacts, keyed the same as var.security_center_contacts"
  value       = { for k, v in azurerm_security_center_contact.security_center_contacts : k => v.email if v.email != null && length(v.email) > 0 }
}
output "security_center_contacts_name" {
  description = "Map of name values across all security_center_contacts, keyed the same as var.security_center_contacts"
  value       = { for k, v in azurerm_security_center_contact.security_center_contacts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "security_center_contacts_phone" {
  description = "Map of phone values across all security_center_contacts, keyed the same as var.security_center_contacts"
  value       = { for k, v in azurerm_security_center_contact.security_center_contacts : k => v.phone if v.phone != null && length(v.phone) > 0 }
}

