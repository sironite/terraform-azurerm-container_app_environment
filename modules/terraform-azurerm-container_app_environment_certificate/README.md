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

module "azurerm_container_app_environment_certificate" {
  source  = "sironite/container_app_environment/azurerm//modules/terraform-azurerm-container_app_environment_certificate"
  version = "x.x.x"

  container_app_environment_certificate_name = var.container_app_environment_certificate_name
  container_app_environment_id               = module.container_app_environment.container_app_environment_id

  certificate_blob_base64      = var.certificate_blob_base64
  certificate_password         = var.certificate_password
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
| [azurerm_container_app_environment_certificate.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment_certificate) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| certificate\_blob\_base64 | The base64-encoded certificate blob. Changing this forces a new resource to be created. | `string` | yes |
| certificate\_password | The password for the certificate. Changing this forces a new resource to be created. | `string` | yes |
| container\_app\_environment\_certificate\_name | The name of the Container App Environment Certificate. Changing this forces a new resource to be created. | `string` | yes |
| container\_app\_environment\_id | The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created. | `string` | yes |

## Outputs

No outputs.

## Related documentation
<!-- END_TF_DOCS -->