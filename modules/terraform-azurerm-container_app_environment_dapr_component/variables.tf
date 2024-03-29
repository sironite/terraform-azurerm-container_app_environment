variable "container_app_environment_dapr_name" {
  description = "The name of the Container App Environment Dapr. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "container_app_environment_id" {
  description = "The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "dapr_component" {
  description = "The Dapr component. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "dapr_version" {
  description = "The Dapr version. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}