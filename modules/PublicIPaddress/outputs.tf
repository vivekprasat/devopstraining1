output "resource_group_name" {
    value = "${azurerm_public_ip.ip123.ip_address}"
}
output "location" {
    value = "${azurerm_public_ip.ip123.location}"
}
output "id" {
    value = "${azurerm_public_ip.ip123.id}"
  
}
output "name" {
    value = azurerm_public_ip.ip123.name
  
}
