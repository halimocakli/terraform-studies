variable "business_unit" {
  description = "Business Unit Name of Company"
  type        = string
  default     = "hr"
}

variable "environment" {
  description = "Working Environment Name"
  type        = string
  default     = "dev"
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "myRg"
}

variable "resoure_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "East US"
}

variable "virtual_network_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "myVnet"
}

variable "vnet_address_space_dev" {
  description = "Virtual Network Address Space for Dev Environment"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "vnet_address_space_all" {
  description = "Virtual Network Address Space for All Environments except dev"
  type        = list(string)
  default     = ["10.1.0.0/16", "10.2.0.0/16", "10.3.0.0/16"]
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  sensitive   = true
}
