# Generic Variables
business_unit = "it"
environment   = "dev"

# Resource Group Variables
resource_group_name     = "dbRg"
resource_group_location = "Southeast Asia"


cosmosdb_config = {
  account_name       = "cosmos-account-ins"
  consistency_level  = "Session"
  partition_key_path = "/mypartitionKey"
  failover_priority  = 0
  kind               = "GlobalDocumentDB"
  offer_type         = "Standard"
}


