resource "azurerm_public_ip" "ip123"{
allocation_method = "Static"
location = var.location
resource_group_name = var.resource_group_name
name = var.name
}