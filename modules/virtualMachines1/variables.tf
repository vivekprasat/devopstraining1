variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where NIC will be created"
  type        = string
}

variable "public_ip_id" {
  description = "Optional Public IP ID for NIC"
  type        = string
  default     = null
}

variable "vm_size" {
  description = "VM Size"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Admin username"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password"
  type        = string
}
variable "nic_name" {
  type = string
  
}

variable "nic_id" {
  
}
variable "nsg_id" {
  
}