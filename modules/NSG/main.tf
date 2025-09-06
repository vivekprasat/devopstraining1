resource "azurerm_network_security_group" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}
# resource "azurerm_network_interface_security_group_association" "nsg_assoc" {
#   network_interface_id      = data.azurerm_network_interface.example.id
#   network_security_group_id = azurerm_network_security_group.example.id
# }