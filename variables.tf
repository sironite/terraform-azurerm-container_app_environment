## Variables for the Container Apps Managed Environment
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
variable "infrastructure_subnet_id" {
  description = "The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created. "
  type        = string
  sensitive   = false
  default     = null
}
variable "internal_load_balancer_enabled" {
  description = "Should the Container Environment operate in Internal Load Balancing Mode? Defaults to false. Changing this forces a new resource to be created."
  type        = bool
  sensitive   = false
  default     = false
}
variable "container_app_environment_tags" {
  description = " A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}

## Variables for the Container Apps Managed Environment Certificate
variable "container_app_environment_certificate_name" {
  description = "The name of the Container App Environment Certificate. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
  default     = null
}
variable "certificate_blob_base64" {
  description = "The base64-encoded certificate blob. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
  default     = null
}

variable "certificate_password" {
  description = "The password for the certificate. Changing this forces a new resource to be created."
  type        = string
  sensitive   = true
  default     = null
}

## Variables for the Container Apps Managed Environment dapr component
variable "container_app_environment_dapr_name" {
  description = "The name of the Container App Environment Dapr. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
  default     = null
}

variable "container_app_environment_dapr_component" {
  description = "The component for the Container App Environment Dapr. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
  default     = null
}

variable "container_app_environment_dapr_version" {
  description = "The version for the Container App Environment Dapr. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
  default     = null
}

## Variables for the Container Apps Managed Environment storage
variable "container_app_environment_storage_name" {
  description = "The name of the Container App Environment Storage. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
  default     = null
}

variable "storage_access_mode" {
  description = "The access mode for the storage account. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
  default     = null
}

variable "storage_account_access_key" {
  description = "The access key for the storage account. Changing this forces a new resource to be created."
  type        = string
  sensitive   = true
  default     = null
}

variable "storage_account_name" {
  description = "The name of the storage account. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
  default     = null
}

variable "storage_share_name" {
  description = "The name of the storage share. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
  default     = null
}
