variable "resourcegroup" {
    type = string
    default = "vivek"
  
}
variable "address_prefix" {
    type = list     
  default = ["10.0.0.0/16"]
}
variable "vnet_name" {
  type = string
  default = "new"
}
variable "location" {
  type = string
  default = "eastus"  
}
