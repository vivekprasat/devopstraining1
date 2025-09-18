terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b8ccb3a1-0873-4cf0-a9d6-f3add26fcd1d"
  tenant_id       = "a466009a-c061-4115-b056-b42f53d6784d"
}
