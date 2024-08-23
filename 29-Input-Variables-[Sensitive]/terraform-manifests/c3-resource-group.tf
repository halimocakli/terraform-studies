# Generate random resource group name
resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}

# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myRg" {
  name     = "${var.business_unit}-${var.resource_group_name_prefix}-${var.resource_group_name}-${var.environment}"
  location = var.resource_group_location
  tags     = var.common_tags
}
