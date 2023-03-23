<!-- BEGIN_TF_DOCS -->
 # Container app environment
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-container_app_environment/releases) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment)

# Usage - Module

## Container app environment
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
```

## Providers

| Name | Version |
|------|---------|
| azurerm | >=3.43.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| azurerm\_container\_app\_environment\_certificate | ./modules/terraform-azurerm-container_app_environment_certificate | n/a |
| azurerm\_container\_app\_environment\_dapr\_component | ./modules/terraform-azurerm-container_app_environment_dapr_component | n/a |
| azurerm\_container\_app\_environment\_storage | ./modules/terraform-azurerm-container_app_environment_storage | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_container_app_environment.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| azure\_location | The location/region where the virtual network is created. Changing this forces a new resource to be created. | `string` | yes |
| container\_app\_environment\_name | The name of the Container Apps Managed Environment. Changing this forces a new resource to be created. | `string` | yes |
| log\_analytics\_workspace\_id | The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to. Changing this forces a new resource to be created. | `string` | yes |
| resource\_group\_name | The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created. | `string` | yes |
| certificate\_blob\_base64 | The base64-encoded certificate blob. Changing this forces a new resource to be created. | `string` | no |
| certificate\_password | The password for the certificate. Changing this forces a new resource to be created. | `string` | no |
| container\_app\_environment\_certificate\_name | The name of the Container App Environment Certificate. Changing this forces a new resource to be created. | `string` | no |
| container\_app\_environment\_dapr\_component | The component for the Container App Environment Dapr. Changing this forces a new resource to be created. | `string` | no |
| container\_app\_environment\_dapr\_name | The name of the Container App Environment Dapr. Changing this forces a new resource to be created. | `string` | no |
| container\_app\_environment\_dapr\_version | The version for the Container App Environment Dapr. Changing this forces a new resource to be created. | `string` | no |
| container\_app\_environment\_storage\_name | The name of the Container App Environment Storage. Changing this forces a new resource to be created. | `string` | no |
| container\_app\_environment\_tags | A mapping of tags to assign to the resource. | `map(any)` | no |
| infrastructure\_subnet\_id | The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created. | `string` | no |
| internal\_load\_balancer\_enabled | Should the Container Environment operate in Internal Load Balancing Mode? Defaults to false. Changing this forces a new resource to be created. | `bool` | no |
| storage\_access\_mode | The access mode for the storage account. Changing this forces a new resource to be created. | `string` | no |
| storage\_account\_access\_key | The access key for the storage account. Changing this forces a new resource to be created. | `string` | no |
| storage\_account\_name | The name of the storage account. Changing this forces a new resource to be created. | `string` | no |
| storage\_share\_name | The name of the storage share. Changing this forces a new resource to be created. | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| container\_app\_environment\_default\_domain | he default, publicly resolvable, name of this Container App Environment. |
| container\_app\_environment\_docker\_bridge\_cidr | The network addressing in which the Container Apps in this Container App Environment will reside in CIDR notation. |
| container\_app\_environment\_id | The ID of the Container App Environment |
| container\_app\_environment\_platform\_reserved\_cidr | The IP range, in CIDR notation, that is reserved for environment infrastructure IP addresses. |
| container\_app\_environment\_platform\_reserved\_dns\_ip\_address | The IP address from the IP range defined by `platform_reserved_cidr` that is reserved for the internal DNS server. |
| container\_app\_environment\_static\_ip\_address | The Static IP of the Environment. |

## Related documentation
<!-- END_TF_DOCS -->