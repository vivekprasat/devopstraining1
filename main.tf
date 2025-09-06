resource "azurerm_resource_group" "new" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
resource "azurerm_storage_account" "tfstate112" {
  name                            = var.storage_account
  resource_group_name             = azurerm_resource_group.new.name
  location                        = azurerm_resource_group.new.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  allow_nested_items_to_be_public = false

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.tfstate112.id
  container_access_type = "private"

}

