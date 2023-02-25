variable "container_app_environment_storage_name" {
  description = "The name for this Container App Environment Storage. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "container_app_environment_id" {
  description = "The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "storage_account_name" {
  description = "The Azure Storage Account in which the Share to be used is located. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "storage_share_name" {
  description = "The name of the Azure Storage Share to use. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "storage_account_access_key" {
  description = "The Storage Account Access Key."
  type        = string
  sensitive   = false
}
variable "storage_access_mode" {
  description = "The access mode to connect this storage to the Container App. Possible values include `ReadOnly` and `ReadWrite`. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}

