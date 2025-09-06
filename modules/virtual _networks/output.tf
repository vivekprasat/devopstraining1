output "vnet_name" {
    value = "${azurerm_virtual_network.vnet.name}"  
}
output "address_prefixes" {
  value = azurerm_virtual_network.vnet.address_space
}
output "location" {
    value = "${azurerm_virtual_network.vnet.location}" 
}