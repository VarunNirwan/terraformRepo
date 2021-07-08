/*
resource "azurerm_cosmosdb_account" "acc" {

  name                      = var.cosmosdb_account
  location                  = azurerm_resource_group.azure_rg.location
  resource_group_name       = azurerm_resource_group.azure_rg.name
  offer_type                = "Standard"
  kind                      = "GlobalDocumentDB"
  enable_automatic_failover = true

  consistency_policy {
    consistency_level = "Session"
  }

  geo_location {
    location          = var.failover_location
    failover_priority = 1
  }

  geo_location {
    location          = var.resource_group_location
    failover_priority = 0
  }
}


resource "azurerm_cosmosdb_sql_database" "db" {
  name                = var.cosmos_sqldb
  resource_group_name = azurerm_cosmosdb_account.acc.resource_group_name
  account_name        = azurerm_cosmosdb_account.acc.name
}

resource "azurerm_cosmosdb_sql_container" "coll" {
  name                = var.cosmos_collection_name
  resource_group_name = azurerm_cosmosdb_account.acc.resource_group_name
  account_name        = azurerm_cosmosdb_account.acc.name
  database_name       = azurerm_cosmosdb_sql_database.db.name
  partition_key_path  = "/CollId"
}
*/



