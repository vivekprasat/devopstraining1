terraform {
  backend "azurerm" {
    resource_group_name  = "vivek007"
    storage_account_name = "tfstateaccount"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
