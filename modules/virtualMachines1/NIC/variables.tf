variable "nic_name" {
  description = "The name of the NIC"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the existing Resource Group"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where NIC will be created"
  type        = string
}

variable "private_ip_allocation" {
  description = "Private IP allocation method (Dynamic or Static)"
  type        = string
  default     = "Dynamic"
}

variable "tags" {
  description = "Tags for NIC"
  type        = map(string)
  default     = {}
}
variable "public_ip_id" {
  type = string
}
variable "nsg_id" {
  type = string
}
