variable "azure_location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "container_app_environment_name" {
  description = "The name of the Container Apps Managed Environment. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "resource_group_name" {
  description = "The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "log_analytics_workspace_id" {
  description = "The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
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

