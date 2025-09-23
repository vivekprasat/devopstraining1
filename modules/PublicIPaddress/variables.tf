variable "public_ip_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "allocation_method" {
  type    = string
  default = "Dynamic"
}

variable "sku" {
  type    = string
  default = "Basic"
}
