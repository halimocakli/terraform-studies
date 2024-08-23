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
  default     = "myrg"
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "mysql-fs-db-rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "resource_group_location" {
  type        = string
  default     = "westeurope"
  description = "Location of the resource group."
}

variable "common_tags" {
  description = "Common Tags for Azure Resources"
  type        = map(string)
  default = {
    "CLI_Tool" = "Terraform"
    "Tag_1"    = "Azure"
  }
}

variable "db_name" {
  description = "Azure MySQL Database DB Name"
  type        = string
}

variable "db_username" {
  description = "Azure MySQL Database Administrator Username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Azure MySQL Database Administrator Password"
  type        = string
  sensitive   = true
}

variable "db_storage_mb" {
  description = "Azure MySQL Database Storage in MB"
  type        = number
}

variable "db_auto_grow_enabled" {
  description = "Azure MySQL Database - Enable or Disable Auto Grow Feature"
  type        = bool
}
