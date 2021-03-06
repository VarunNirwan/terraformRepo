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

variable "app_service_plan_name_wa" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "app_service_name_wa" {
  type        = string
  description = "Web App name in Azure"
}

variable "app_service_name_wa1" {
  type        = string
  description = "Web App name in Azure"
}

variable "app_service_name_wa2" {
  type        = string
  description = "Web App name in Azure"
}

/*variable "app_service_name_wa3" {
  type        = string
  description = "Web App name in Azure"
}*/

variable "eventhubnamespace_name" {
  type        = string
  description = "Eventthub namespace in Azure"
}

variable "eventhub_name" {
  type        = string
  description = "Event hub name in Azure"
}

variable "cosmosdb_account" {
  type        = string
  description = "Cosmos Db account name in Azure"
}

variable "cosmos_sqldb" {
  type        = string
  description = "Cosmos Db sql name in Azure"
}

variable "cosmos_collection_name" {
  type        = string
  description = "Cosmos Db sql container name in Azure"
}

variable "failover_location" {
  default = "northeurope"
}