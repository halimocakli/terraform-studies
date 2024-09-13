# Cosmos DB account
resource "azurerm_cosmosdb_account" "cosmosdbaccount" {
  name                = var.cosmosdb_config[0]
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  offer_type          = var.cosmosdb_config[4]

  kind = var.cosmosdb_config[3]

  consistency_policy {
    consistency_level = var.cosmosdb_config[1]
  }

  geo_location {
    location          = azurerm_resource_group.myrg.location
    failover_priority = var.cosmosdb_config[5]
  }


  capabilities {
    name = "EnableServerless"
  }
}

# Cosmos DB SQL Database
resource "azurerm_cosmosdb_sql_database" "cosmosdbsql" {
  name                = var.cosmos_db_name
  resource_group_name = azurerm_resource_group.myrg.name
  account_name        = var.cosmosdb_config[0]

  depends_on = [
    azurerm_cosmosdb_account.cosmosdbaccount
  ]
}

# Cosmos DB SQL Container
resource "azurerm_cosmosdb_sql_container" "cosmosdbcontainer" {
  name                = var.cosmosdb_sql_container_name
  resource_group_name = azurerm_resource_group.myrg.name
  account_name        = var.cosmosdb_config[0]
  database_name       = azurerm_cosmosdb_sql_database.cosmosdbsql.name
  partition_key_paths = [var.cosmosdb_config[2]]
}
