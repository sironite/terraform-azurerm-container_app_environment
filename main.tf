resource "azurerm_container_app_environment" "this" {
  name                = var.container_app_environment_name
  location            = var.azure_location
  resource_group_name = var.resource_group_name

  log_analytics_workspace_id = var.log_analytics_workspace_id

  infrastructure_subnet_id       = var.infrastructure_subnet_id
  internal_load_balancer_enabled = var.internal_load_balancer_enabled

  tags = var.container_app_environment_tags
}

module "azurerm_container_app_environment_certificate" {
  source = "./modules/terraform-azurerm-container_app_environment_certificate"

  container_app_environment_certificate_name = var.container_app_environment_certificate_name
  container_app_environment_id               = azurerm_container_app_environment.this.id

  certificate_blob_base64 = var.certificate_blob_base64
  certificate_password    = var.certificate_password

  depends_on = [
    azurerm_container_app_environment.this
  ]
}

module "azurerm_container_app_environment_dapr_component" {
  source = "./modules/terraform-azurerm-container_app_environment_dapr_component"

  container_app_environment_dapr_name = var.container_app_environment_dapr_name
  container_app_environment_id        = azurerm_container_app_environment.this.id

  container_app_environment_dapr_component = var.container_app_environment_dapr_component
  container_app_environment_dapr_version   = var.container_app_environment_dapr_version

  depends_on = [
    azurerm_container_app_environment.this
  ]
}

module "azurerm_container_app_environment_storage" {
  source = "./modules/terraform-azurerm-container_app_environment_storage"

  container_app_environment_storage_name = var.container_app_environment_storage_name
  container_app_environment_id           = azurerm_container_app_environment.this.id

  storage_account_name = var.storage_account_name
  storage_share_name   = var.storage_share_name
  storage_access_mode  = var.storage_access_mode
  access_key           = var.storage_account_access_key
  access_mode          = var.storage_access_mode

  depends_on = [
    azurerm_container_app_environment.this
  ]
}
