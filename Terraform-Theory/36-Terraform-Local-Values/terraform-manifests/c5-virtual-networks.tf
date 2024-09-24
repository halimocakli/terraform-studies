resource "azurerm_virtual_network" "myVnet" {
  name                = local.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.azureRg.location
  resource_group_name = azurerm_resource_group.azureRg.name

  tags = local.common_tags
}
