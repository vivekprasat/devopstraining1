variable "resource_group_name" {
    type = string 
    description = "resource group name"

}
variable "azurerm_public_ip" {
    type = list
}
variable "location" {
    type = string
  
}
variable "name" {
  
}

variable "sku" {
  type    = string
  default = "Basic"
}

variable "allocation_method" {
  type    = string
  default = "Dynamic"
}
