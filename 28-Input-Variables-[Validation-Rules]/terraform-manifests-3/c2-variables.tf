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
  default     = "myrg"
}
# 4. Resource Group Location
# Input Validation Rule Created
variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "eastus"
  validation {
    condition     = can(regex("india$", var.resource_group_location))
    error_message = "We only allow resources to be created in westindia and southindia locations."
  }
}
# 5. Virtual Network Name
variable "virtual_network_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "myvnet"
}
# 6. Subnet Adı: Bu değişkenin değeri, "promt" aşamasında CLI üzerinden atanacaktır.
variable "subnet_name" {
  description = "Virtual Network Subnet Name"
  type        = string
  default     = "mysubnet"
}
# 7. Virtual Network address_space
# Burada oluşturduğumuz değişken list tipindedir.
# Bu değişkenin değeri, "terraform.tfvars" dosyasında atanacaktır.
# Değer atanmaması durumunda, aşağıda varsayılan olarak belirlenen değerler kullanılacaktır.
variable "virtual_network_address_space" {
  description = "Virtual Network Address Space"
  type        = list(string)
  default     = ["10.0.0.0/16", "10.1.0.0/16", "10.2.0.0/16"]
}
# 8. Public IP SKU
variable "public_ip_sku" {
  description = "Azure Public IP SKU"
  type        = map(string)
  default = {
    "eastus"  = "Basic"
    "eastus2" = "Standard"
  }
}
# 9. Common Tags
variable "common_tags" {
  description = "Common Tags for Azure Resources"
  type        = map(string)
  default = {
    "CLI_Tool" = "Terraform"
    "Tag_1"    = "Azure"
  }
}
