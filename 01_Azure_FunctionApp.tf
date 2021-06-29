
# Resource Group
/*
resource "azurerm_resource_group" "azure_rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

# Generate random text for a unique storage account name
resource "random_id" "randomId" {
  keepers = {
    # Generate a new ID only when a new resource group is defined
    resource_group = azurerm_resource_group.azure_rg.name
  }

  byte_length = 8
}



# Storage Account

resource "azurerm_storage_account" "azure_sa" {
  name                     = "apmm${random_id.randomId.hex}"
  resource_group_name      = azurerm_resource_group.azure_rg.name
  location                 = azurerm_resource_group.azure_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}



 # App Service Plan

resource "azurerm_app_service_plan" "azure_asp" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.azure_rg.location
  resource_group_name = azurerm_resource_group.azure_rg.name
  kind                = "FunctionApp"

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}


resource "azurerm_application_insights" "azure_ai" {
  name                = var.application_insight_name
  location            = azurerm_resource_group.azure_rg.location
  resource_group_name = azurerm_resource_group.azure_rg.name
  application_type    = "web"
}



# Function App

resource "azurerm_function_app" "azure_fa" {
  name                       = var.function_app_name
  location                   = azurerm_resource_group.azure_rg.location
  resource_group_name        = azurerm_resource_group.azure_rg.name
  app_service_plan_id        = azurerm_app_service_plan.azure_asp.id
  storage_account_name       = azurerm_storage_account.azure_sa.name
  storage_account_access_key = azurerm_storage_account.azure_sa.primary_access_key

  app_settings = {
    APPINSIGHTS_INSTRUMENTATIONKEY = azurerm_application_insights.azure_ai.instrumentation_key
  }
}
*/