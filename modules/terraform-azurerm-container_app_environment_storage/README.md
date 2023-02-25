<!-- BEGIN_TF_DOCS -->
 # Container app environment storage
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-container_app_environment/releases) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment_storage)

# Usage - Module

```hcl
module "container_app_environment_terraform-azurerm-container_app_environment_storage" {
  source  = "sironite/container_app_environment/azurerm//modules/terraform-azurerm-container_app_environment_storage"
  version = "x.x.x"

  name                         = var.container_app_environment_storage_name
  container_app_environment_id = var.container_app_environment_id

  account_name                 = var.storage_account_name
  share_name                   = var.storage_share_name
  access_key                   = var.storage_account_access_key
  access_mode                  = var.storage_access_mode
}


```
## Providers

| Name | Version |
|------|---------|
| azurerm | >=3.43.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_app_environment_storage.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment_storage) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| container\_app\_environment\_id | The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created. | `string` | yes |
| container\_app\_environment\_storage\_name | The name for this Container App Environment Storage. Changing this forces a new resource to be created. | `string` | yes |
| storage\_access\_mode | The access mode to connect this storage to the Container App. Possible values include `ReadOnly` and `ReadWrite`. Changing this forces a new resource to be created. | `string` | yes |
| storage\_account\_access\_key | The Storage Account Access Key. | `string` | yes |
| storage\_account\_name | The Azure Storage Account in which the Share to be used is located. Changing this forces a new resource to be created. | `string` | yes |
| storage\_share\_name | The name of the Azure Storage Share to use. Changing this forces a new resource to be created. | `string` | yes |

## Outputs

No outputs.

## Related documentation
<!-- END_TF_DOCS -->