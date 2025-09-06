output "nic_id" {
  description = "The ID of the NIC"
  value       = azurerm_network_interface.nic.id
}

output "nic_private_ip" {
  value = azurerm_network_interface.nic.private_ip_address
}
output "nic_name" {
  value = "${azurerm_network_interface.nic.name}"
}
output "nsg_id" {
  value = "${azurerm_network_interface_security_group_association.nsg_assoc.network_security_group_id}"
  
}