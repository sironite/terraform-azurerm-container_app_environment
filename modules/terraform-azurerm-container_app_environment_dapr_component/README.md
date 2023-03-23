<!-- BEGIN_TF_DOCS -->
 # Container app environment storage
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-container_app_environment/releases) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment_storage)

# Usage - Module

```hcl
module "container_app_environment" {
  source  = "sironite/container_app_environment/azurerm"
  version = "x.x.x"

  container_app_environment_name = var.container_app_environment_name
  azure_location                 = var.azure_location
  resource_group_name            = var.resource_group_name

  log_analytics_workspace_id = var.log_analytics_workspace_id

  infrastructure_subnet_id       = var.infrastructure_subnet_id
  internal_load_balancer_enabled = var.internal_load_balancer_enabled

  tags = var.container_app_environment_tags
}

module "azurerm_container_app_environment_dapr_component" {
  source  = "sironite/container_app_environment/azurerm//modules/terraform-azurerm-container_app_environment_dapr_component"
  version = "x.x.x"

  container_app_environment_dapr_name = var.container_app_environment_dapr_name
  container_app_environment_id        = module.container_app_environment.container_app_environment_id

  container_app_environment_dapr_component = var.container_app_environment_dapr_component
  container_app_environment_dapr_version   = var.container_app_environment_dapr_version

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
| [azurerm_container_app_environment_dapr_component.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment_dapr_component) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| container\_app\_environment\_dapr\_component | The Dapr component. Changing this forces a new resource to be created. | `string` | yes |
| container\_app\_environment\_dapr\_name | The name of the Container App Environment Dapr. Changing this forces a new resource to be created. | `string` | yes |
| container\_app\_environment\_dapr\_version | The Dapr version. Changing this forces a new resource to be created. | `string` | yes |
| container\_app\_environment\_id | The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created. | `string` | yes |

## Outputs

No outputs.

## Related documentation
<!-- END_TF_DOCS -->