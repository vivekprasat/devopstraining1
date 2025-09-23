module "azurerm_resource_group" {
  source                  = "./modules/resourcegroups"
  resource_group_name     = var.group_name
  resource_group_location = var.location
}

module "azurerm_virtual_network" {
  source = "./modules/virtual _networks" # fixed folder name
  resource_group_name = module.azurerm_resource_group.resource_group_name
  location            = module.azurerm_resource_group.resource_group_location
  vnet_name           = var.vnet_name
  address_prefix      = var.address_prefix
  depends_on          = [module.azurerm_resource_group]
}

module "azurerm_subnet" {
  source                  = "./modules/subnets"
  subnet_address_prefixes = var.address_prefix
  resource_group_name     = module.azurerm_resource_group.resource_group_name
  name                    = var.sub_name
  vnet_name               = module.azurerm_virtual_network.vnet_name
  depends_on              = [module.azurerm_virtual_network]
}

module "azurerm_network_security_group" {
  source              = "./modules/NSG"
  name                = var.nsg_name
  resource_group_name = module.azurerm_resource_group.resource_group_name
  location            = module.azurerm_resource_group.resource_group_location
  nic_name            = var.nic_name
  depends_on          = [module.azurerm_resource_group]
}

module "azurerm_public_ip" {
  source              = "./modules/PublicIPaddress"
  resource_group_name = module.azurerm_resource_group.resource_group_name
  location            = module.azurerm_resource_group.resource_group_location
  name      = "net124"
  sku                 = "Basic"
  allocation_method   = "Dynamic"
  depends_on          = [module.azurerm_resource_group]
}

module "azurerm_network_interface" {
  source              = "./modules/virtualMachines1/NIC"
  nic_name            = var.nic_name
  resource_group_name = module.azurerm_resource_group.resource_group_name
  subnet_id           = module.azurerm_subnet.subnet_id
  location            = module.azurerm_resource_group.resource_group_location
  public_ip_id        = module.azurerm_public_ip.id
  nsg_id              = module.azurerm_network_security_group.nsg_id
  depends_on          = [module.azurerm_subnet, module.azurerm_network_security_group]
}

module "virtualmachines" {
  source              = "./modules/virtualMachines1"
  vm_name             = var.vm_name
  location            = module.azurerm_resource_group.resource_group_location
  resource_group_name = module.azurerm_resource_group.resource_group_name
  subnet_id           = module.azurerm_subnet.subnet_id
  public_ip_id        = module.azurerm_public_ip.id
  admin_username      = "azureuser"
  admin_password      = "Revisu!123"
  nic_name            = module.azurerm_network_interface.nic_name
  nic_id              = module.azurerm_network_interface.nic_id
  nsg_id              = module.azurerm_network_security_group.nsg_id
  depends_on          = [module.azurerm_network_interface]
}

terraform {
  backend "azurerm" {
    resource_group_name   = "vivek007"
    storage_account_name  = "tfstorage000009"
    container_name        = "tfprivatecontainer"
    key                   = "terraform.tfstate"
  }
}
