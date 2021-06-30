/*
resource "azurerm_eventhub_namespace" "azure_eventhubnamespace" {
  name                = var.eventhubnamespace_name
  location            = azurerm_resource_group.azure_rg.location
  resource_group_name = azurerm_resource_group.azure_rg.name
  sku                 = "Standard"
  capacity            = 1

}

resource "azurerm_eventhub" "azure_eventhub" {
  name                = var.eventhub_name
  namespace_name      = azurerm_eventhub_namespace.azure_eventhubnamespace.name
  resource_group_name = azurerm_resource_group.azure_rg.name
  partition_count     = 2
  message_retention   = 1
}
*/
