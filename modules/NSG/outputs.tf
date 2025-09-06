output "nsg_id" {
  description = "The ID of the Network Security Group"
  value       = azurerm_network_security_group.example.id
}

output "nsg_name" {
  description = "The name of the Network Security Group"
  value       = azurerm_network_security_group.example.name
}

output "nsg_resource_group" {
  description = "The resource group where the NSG is created"
  value       = azurerm_network_security_group.example.resource_group_name
}

output "nsg_rules" {
  description = "List of security rules applied in this NSG"
  value       = azurerm_network_security_group.example.security_rule
}
