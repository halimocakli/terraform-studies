resource "azurerm_virtual_network" "vnet_1" {
  name                = local.vnet_name
  address_space       = local.vnet_address_space
  location            = azurerm_resource_group.azureRg.location
  resource_group_name = azurerm_resource_group.azureRg.name

  tags = local.common_tags
}

resource "azurerm_virtual_network" "vnet_2" {
  count               = var.environment == "dev" ? 1 : 5
  name                = "${local.vnet_name}-${count.index}"
  address_space       = local.vnet_address_space
  location            = azurerm_resource_group.azureRg.location
  resource_group_name = azurerm_resource_group.azureRg.name

  tags = local.common_tags
}
