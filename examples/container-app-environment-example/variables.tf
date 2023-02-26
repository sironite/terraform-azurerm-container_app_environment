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