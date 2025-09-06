output "subnet_address_prefixes" {
  value = azurerm_subnet.net01.address_prefixes
}

output "subnet_id" {
    value= "${azurerm_subnet.net01.id}"
}

