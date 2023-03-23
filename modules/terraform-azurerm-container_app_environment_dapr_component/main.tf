resource "azurerm_container_app_environment_dapr_component" "this" {
  count = var.container_app_environment_dapr_name == null ? 0 : 1

  name                         = var.container_app_environment_dapr_name
  container_app_environment_id = var.container_app_environment_id
  component                    = var.container_app_environment_dapr_component
  version                      = var.container_app_environment_dapr_version

}