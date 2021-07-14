
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



# App Service0

resource "azurerm_app_service" "azure_wa" {
  name                = var.app_service_name_wa
  location            = azurerm_resource_group.azure_rg.location
  resource_group_name = azurerm_resource_group.azure_rg.name
  app_service_plan_id = azurerm_app_service_plan.azure_wap.id

  site_config {
    #dotnet_framework_version = "v4.0"
    windows_fx_version = "DOTNETCORE|3.1"
  }

  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY"      = "${azurerm_application_insights.azure_ai.instrumentation_key}"
    "APPINSIGHTS_PORTALINFO"              = "ASP.NET"
    "APPINSIGHTS_PROFILERFEATURE_VERSION" = "1.0.0"
    "WEBSITE_HTTPLOGGING_RETENTION_DAYS"  = "35"
  }
}

# App Service1 Varun
/*
resource "azurerm_app_service" "azure_wa1" {
  name                = var.app_service_name_wa1
  location            = azurerm_resource_group.azure_rg.location
  resource_group_name = azurerm_resource_group.azure_rg.name
  app_service_plan_id = azurerm_app_service_plan.azure_wap.id

  site_config {
    #dotnet_framework_version = "v4.0"
    windows_fx_version = "DOTNETCORE|3.1"
  }

  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY"      = "${azurerm_application_insights.azure_ai.instrumentation_key}"
    "APPINSIGHTS_PORTALINFO"              = "ASP.NET"
    "APPINSIGHTS_PROFILERFEATURE_VERSION" = "1.0.0"
    "WEBSITE_HTTPLOGGING_RETENTION_DAYS"  = "35"
  }
}

# App Service2

resource "azurerm_app_service" "azure_wa2" {
  name                = var.app_service_name_wa2
  location            = azurerm_resource_group.azure_rg.location
  resource_group_name = azurerm_resource_group.azure_rg.name
  app_service_plan_id = azurerm_app_service_plan.azure_wap.id

  site_config {
    #dotnet_framework_version = "v4.0"
    windows_fx_version = "DOTNETCORE|3.1"
  }

  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY"      = "${azurerm_application_insights.azure_ai.instrumentation_key}"
    "APPINSIGHTS_PORTALINFO"              = "ASP.NET"
    "APPINSIGHTS_PROFILERFEATURE_VERSION" = "1.0.0"
    "WEBSITE_HTTPLOGGING_RETENTION_DAYS"  = "35"
  }
}


# App Service3

resource "azurerm_app_service" "azure_wa3" {
  name                = var.app_service_name_wa3
  location            = azurerm_resource_group.azure_rg.location
  resource_group_name = azurerm_resource_group.azure_rg.name
  app_service_plan_id = azurerm_app_service_plan.azure_wap.id

  site_config {
    dotnet_framework_version = "v5.0"
    #windows_fx_version = "DOTNETCORE|3.1 "
  }

  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY"      = "${azurerm_application_insights.azure_ai.instrumentation_key}"
    "APPINSIGHTS_PORTALINFO"              = "ASP.NET"
    "APPINSIGHTS_PROFILERFEATURE_VERSION" = "1.0.0"
    "WEBSITE_HTTPLOGGING_RETENTION_DAYS"  = "35"
  }
}
*/



