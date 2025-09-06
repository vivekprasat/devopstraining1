variable "group_name" {
  type = string
}
variable "location" {
  type = string
}
variable "vnet_name" {
  type = string

}
variable "address_prefix" {
  type = list(any)
}

variable "nic_name" {
  type = string
}
variable "Machine_name" {
  type = string

}
variable "public_ip" {
  type        = string
  description = "The name of the public IP address resource"
}

variable "nsg_name" {
  type        = string
  description = "The name of the public IP address resource"
}

variable "vm_name" {
  type        = string
  description = "The name of the public IP address resource"
}
variable "sub_name" {
  type        = string
  description = "The name of the public IP address resource"
}
