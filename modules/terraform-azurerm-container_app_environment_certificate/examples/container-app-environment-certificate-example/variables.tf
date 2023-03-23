variable "container_app_environment_certificate_name" {
  description = "The name of the Container App Environment Certificate. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "container_app_environment_id" {
  description = "The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "certificate_blob_base64" {
  description = "The base64-encoded certificate blob. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "certificate_password" {
  description = "The password for the certificate. Changing this forces a new resource to be created."
  type        = string
  sensitive   = true
}
