
resource "azurerm_virtual_network" "vnet" {
  name = var.vnet_name
  resource_group_name = var.resourcegroup
  address_space = var.address_prefix
  location = var.location
}