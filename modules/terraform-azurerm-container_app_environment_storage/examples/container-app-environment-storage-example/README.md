# Terraform module | AzureRM - Container app environment storage

This Terraform module is designed to create a Container app environment storage for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`subnet_network_security_group_association`

```hcl
module "subnet_network_security_group_association" {
  source  = "sironite/subnet_network_security_group_association/azurerm"
  version = "x.x.x"

  container_app_environment_id = var.container_app_environment_id

  account_name                 = var.storage_account_name
  share_name                   = var.storage_share_name
  access_key                   = var.storage_account_access_key
  access_mode                  = var.storage_access_mode
}

```
## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
