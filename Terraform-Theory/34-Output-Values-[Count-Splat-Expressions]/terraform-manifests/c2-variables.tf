# Girdi değişkenlerini(Input Variables) bu kısımda tanımlamaktayız
variable "business_unit" {
  description = "Bussiness Unit Name"
  type        = string
  default     = "human resources"
}

variable "environment" {
  description = "Environment Name"
  type        = string
  default     = "poc"
}

variable "resoure_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "myRg"
}

variable "resoure_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "eastus"
}

variable "virtual_network_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "myVnet"
}

variable "subscription_id" {
  description = "4c28dff0-4fa6-472e-ad04-37720fdaa028"
  type        = string
  sensitive   = true
}
