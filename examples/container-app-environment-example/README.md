# Terraform module | AzureRM - Container app environment

This Terraform module is designed to create a Container app environment for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`ip_group`

```hcl
module "ip_group" {
  source  = "sironite/ip_group/azurerm"
  version = "x.x.x"

  ip_group_name       = var.ip_group_name
  azure_location      = var.azure_location
  resource_group_name = var.resource_group_name

  ip_group_cidrs = var.virtual_network_cidr
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
