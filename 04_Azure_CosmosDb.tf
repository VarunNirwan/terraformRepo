data "azurerm_cosmosdb_account" "azure_cosmosdbaccount" {
  name                = var.cosmosdb_account
  resource_group_name = azurerm_resource_group.azure_rg.name
}

resource "azurerm_cosmosdb_sql_database" "azure_cosmosdb" {
  name                = var.cosmos_sqldb
  resource_group_name = data.azurerm_cosmosdb_account.azure_cosmosdbaccount.resource_group_name
  account_name        = data.azurerm_cosmosdb_account.azure_cosmosdbaccount.name
  throughput          = 400
}