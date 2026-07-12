output "security_center_contacts_alert_notifications" {
  description = "Map of alert_notifications values across all security_center_contacts, keyed the same as var.security_center_contacts"
  value       = { for k, v in azurerm_security_center_contact.security_center_contacts : k => v.alert_notifications }
}
output "security_center_contacts_alerts_to_admins" {
  description = "Map of alerts_to_admins values across all security_center_contacts, keyed the same as var.security_center_contacts"
  value       = { for k, v in azurerm_security_center_contact.security_center_contacts : k => v.alerts_to_admins }
}
output "security_center_contacts_email" {
  description = "Map of email values across all security_center_contacts, keyed the same as var.security_center_contacts"
  value       = { for k, v in azurerm_security_center_contact.security_center_contacts : k => v.email }
}
output "security_center_contacts_name" {
  description = "Map of name values across all security_center_contacts, keyed the same as var.security_center_contacts"
  value       = { for k, v in azurerm_security_center_contact.security_center_contacts : k => v.name }
}
output "security_center_contacts_phone" {
  description = "Map of phone values across all security_center_contacts, keyed the same as var.security_center_contacts"
  value       = { for k, v in azurerm_security_center_contact.security_center_contacts : k => v.phone }
}

