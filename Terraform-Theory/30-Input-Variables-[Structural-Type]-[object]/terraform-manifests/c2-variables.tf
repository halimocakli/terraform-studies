# Input Variables

# 1. Business Unit Name
variable "business_unit" {
  description = "Business Unit Name"
  type        = string
  default     = "hr"
}

# 2. Environment Name
variable "environment" {
  description = "Environment Name"
  type        = string
  default     = "dev"
}

# 3. Resource Group Name
variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "rg"
}

# 4. Resource Group Location
variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "West US 2"
}

# 5. Common Tags
variable "common_tags" {
  description = "Common Tags for Azure Resources"
  type        = map(string)
  default = {
    "CLITool" = "Terraform"
    "Tag1"    = "Azure"
  }
}

# 6. Azure Cosmos DB Name (Variable Type: String)
variable "cosmos_db_name" {
  description = "Azure Cosmos Database Name"
  type        = string
  default     = "mycosmosdb"
}

variable "cosmosdb_sql_container_name" {
  description = "Azure Cosmos Database Container Name"
  type        = string
  default     = "mycontainer"
}

# 7. Define object variable for Cosmos DB configuration
variable "cosmosdb_config" {
  type = object({
    account_name       = string
    offer_type         = string
    kind               = string
    consistency_level  = string
    partition_key_path = string
    failover_priority  = number
  })
}
