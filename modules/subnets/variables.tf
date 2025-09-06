variable "subnet_address_prefixes" {
    type = list
    description = "subnet address prefixes"
   
}
variable "name"  {
    description = "virtual network name"

}
variable "vnet_name"  {
    description = "virtual network name"

}
variable "resource_group_location" {
    type        = string
    description = "Specifies the location of the Resource Group in which the Linux Virtual Machine should exist"
    default = "eastus"
}
variable "resource_group_name" {
    type        = string
    description = "Specifies the name of the Resource Group in which the Linux Virtual Machine should exist"
    default = "vivek"
}

