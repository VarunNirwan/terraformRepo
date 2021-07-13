
resource "azurerm_monitor_action_group" "main" {
  name                = "apmm-actiongroup"
  resource_group_name = azurerm_resource_group.azure_rg.name
  short_name          = "apmmact"

  email_receiver {
    name          = "sendtovarun"
    email_address = "nirwan.varun@gmail.com"
  }
}

resource "azurerm_monitor_metric_alert" "kafka_msg_produced" {
  name                = "KafkaIncomingMsg"
  resource_group_name = azurerm_resource_group.azure_rg.name
  scopes              = [azurerm_application_insights.azure_ai.id]

  enabled = "${var.test_insight_alerts_enabled}"

  description = "Whenever the count of kafka msg produced is greater than 10"

  criteria {
    metric_namespace = "Microsoft.Insights/Components"
    metric_name      = "HeartbeatState"
    aggregation      = "Count"
    operator         = "GreaterThan"
    threshold        = 0

  }

  action {
    action_group_id = "${azurerm_monitor_action_group.main.id}"
  }
}