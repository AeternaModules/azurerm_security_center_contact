output "security_center_contacts" {
  description = "All security_center_contact resources"
  value       = azurerm_security_center_contact.security_center_contacts
}
output "security_center_contacts_alert_notifications" {
  description = "List of alert_notifications values across all security_center_contacts"
  value       = [for k, v in azurerm_security_center_contact.security_center_contacts : v.alert_notifications]
}
output "security_center_contacts_alerts_to_admins" {
  description = "List of alerts_to_admins values across all security_center_contacts"
  value       = [for k, v in azurerm_security_center_contact.security_center_contacts : v.alerts_to_admins]
}
output "security_center_contacts_email" {
  description = "List of email values across all security_center_contacts"
  value       = [for k, v in azurerm_security_center_contact.security_center_contacts : v.email]
}
output "security_center_contacts_name" {
  description = "List of name values across all security_center_contacts"
  value       = [for k, v in azurerm_security_center_contact.security_center_contacts : v.name]
}
output "security_center_contacts_phone" {
  description = "List of phone values across all security_center_contacts"
  value       = [for k, v in azurerm_security_center_contact.security_center_contacts : v.phone]
}

