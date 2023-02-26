# Terraform module | AzureRM - Container app environment storage

This Terraform module is designed to create a Container app environment storage for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`azurerm_container_app_environment_storage`

```hcl
module "container_app_environment" {
  source  = "sironite/container_app_environment/azurerm"
  version = "x.x.x"

  container_app_environment_name  = var.container_app_environment_name
  azure_location                  = var.azure_location
  resource_group_name             = var.resource_group_name

  log_analytics_workspace_id = var.log_analytics_workspace_id

  infrastructure_subnet_id       = var.infrastructure_subnet_id
  internal_load_balancer_enabled = var.internal_load_balancer_enabled

  tags = var.container_app_environment_tags
}

module "azurerm_container_app_environment_storage" {
  source  = "sironite/container_app_environment/azurerm//modules/terraform-azurerm-container_app_environment_storage"
  version = "x.x.x"

  container_app_environment_storage_name = var.container_app_environment_storage_name
  container_app_environment_id           = module.container_app_environment.container_app_environment_id

  storage_account_name       = var.storage_account_name
  storage_share_name         = var.storage_share_name
  storage_account_access_key = var.storage_account_access_key
  storage_access_mode        = var.storage_access_mode
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
