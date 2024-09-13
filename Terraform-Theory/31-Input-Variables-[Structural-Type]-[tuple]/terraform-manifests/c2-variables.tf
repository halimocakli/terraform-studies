
variable "business_unit" {
  description = "Business Unit Name"
  type        = string
  default     = "hr"
}

variable "environment" {
  description = "Environment Name"
  type        = string
  default     = "dev"
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "rg"
}

variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "West US 2"
}

variable "common_tags" {
  description = "Common Tags for Azure Resources"
  type        = map(string)
  default = {
    "CLITool" = "Terraform"
    "Tag1"    = "Azure"
  }
}

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

variable "cosmosdb_config" {
  type = tuple([string, string, string, string, string, number])
}
