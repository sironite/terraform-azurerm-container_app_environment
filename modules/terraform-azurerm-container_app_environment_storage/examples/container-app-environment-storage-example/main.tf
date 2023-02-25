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


