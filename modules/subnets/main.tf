resource "azurerm_subnet" "net01" {
  name = var.name
  resource_group_name = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes = var.subnet_address_prefixes
}