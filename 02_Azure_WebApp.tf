
/*
# App Service Plan

resource "azurerm_app_service_plan" "azure_wap" {
  name                = var.app_service_plan_name_wa
  location            = azurerm_resource_group.azure_rg.location
  resource_group_name = azurerm_resource_group.azure_rg.name
  kind                = "Windows"

  sku {
    tier = "Standard"
    size = "S1"
  }
}



# App Service

resource "azurerm_app_service" "azure_wa" {
  name                = var.app_service_name_wa
  location            = azurerm_resource_group.azure_rg.location
  resource_group_name = azurerm_resource_group.azure_rg.name
  app_service_plan_id = azurerm_app_service_plan.azure_wap.id

  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY"      = "${azurerm_application_insights.azure_ai.instrumentation_key}"
    "APPINSIGHTS_PORTALINFO"              = "ASP.NET"
    "APPINSIGHTS_PROFILERFEATURE_VERSION" = "1.0.0"
    "WEBSITE_HTTPLOGGING_RETENTION_DAYS"  = "35"
  }
}

*/
