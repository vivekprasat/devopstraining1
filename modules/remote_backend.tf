terraform {
  backend "azurerm" {
    access_key = "rJ9U1i7yESKHZ9i/Oi9aAtCCN8fP5MqGCgfwUCp/J7Mw3c3TrHrefqxCDmNDL5lyRJ6AkANJ2s76+AStEFfnYQ==" 
    storage_account_name = "tfstorage000009"                                                                        # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name  = "tfprivatecontainer"
    key = "terraform.tfstate"
    resource_group_name = "vivek007"                                                         # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.                 # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}