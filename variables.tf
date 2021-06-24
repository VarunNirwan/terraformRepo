variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"

}

variable "resource_group_location" {
  type        = string
  description = "RG location in Azure"

}

variable "app_service_plan_name" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "function_app_name" {
  type        = string
  description = "function App name in Azure"
}

variable "application_insight_name" {
  type        = string
  description = "Application Insight name in Azure"
}