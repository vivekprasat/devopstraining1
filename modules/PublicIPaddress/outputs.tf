output "resource_group_name" {
    value = "${azurerm_public_ip.this.ip_address}"
}
output "location" {
    value = "${azurerm_public_ip.this.location}"
}
output "id" {
    value = "${azurerm_public_ip.this.id}"
  
}
output "name" {
    value = azurerm_public_ip.this.name
  
}
