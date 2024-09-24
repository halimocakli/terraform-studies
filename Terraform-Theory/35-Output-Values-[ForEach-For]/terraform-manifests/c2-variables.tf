variable "business_unit" {
  description = "Business Unit Name of Company"
  type        = string
  default     = "hr"
}

variable "environment" {
  description = "Working Environment Name"
  type        = set(string)
  default     = ["dev1", "qa1", "staging1", "prod1"]
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "tutorialRg"
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

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  sensitive   = true
}