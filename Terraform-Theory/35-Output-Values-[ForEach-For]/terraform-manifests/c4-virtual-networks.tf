resource "azurerm_virtual_network" "myVnet" {
  for_each            = var.environment
  name                = "${var.business_unit}-${each.key}-${var.virtual_network_name}"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.azureRg.location
  resource_group_name = azurerm_resource_group.azureRg.name
}
