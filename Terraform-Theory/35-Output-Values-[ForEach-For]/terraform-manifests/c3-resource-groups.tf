resource "azurerm_resource_group" "azureRg" {
  name     = var.resource_group_name
  location = var.resoure_group_location
}
