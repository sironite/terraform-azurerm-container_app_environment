resource "azurerm_container_app_environment_certificate" "this" {
  count = var.container_app_environment_certificate_name == null ? 0 : 1

  name                         = var.container_app_environment_certificate_name
  container_app_environment_id = var.container_app_environment_id
  certificate_blob_base64      = var.certificate_blob_base64
  certificate_password         = var.certificate_password
}
