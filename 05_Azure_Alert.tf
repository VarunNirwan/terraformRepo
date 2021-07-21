# Action Group
/*
resource "azurerm_monitor_action_group" "main" {
  name                = "apmm-actiongroup"
  resource_group_name = azurerm_resource_group.azure_rg.name
  short_name          = "apmmact"

  email_receiver {
    name          = "SendEmailToVarun"
    email_address = "nirwan.varun@gmail.com"
  }
}

# Alert updated   demo
resource "azurerm_monitor_metric_alert" "serverexception" {
  name                = "ServerException"
  resource_group_name = azurerm_resource_group.azure_rg.name
  scopes              = [azurerm_application_insights.azure_ai.id]

  description = "Whenever the count of server execption produced is greater than 10"

  #target_resource_type      = "Microsoft.Insights/Components"
  #target_resource_location  = var.resource_group_location

  criteria {
    #metric_namespace = "azure.applicationinsights"
    metric_namespace = "microsoft.insights/components"
    metric_name      = "exceptions/server"
    aggregation      = "Count"
    operator         = "GreaterThan"
    threshold        = 10

  }

  action {
    action_group_id = "${azurerm_monitor_action_group.main.id}"
  }
}
*/