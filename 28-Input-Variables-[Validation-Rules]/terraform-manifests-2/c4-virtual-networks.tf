resource "azurerm_virtual_network" "myVnet" {
  name                = "${var.business_unit}-${var.environment}-${var.virtual_network_name}"
  address_space       = var.virtual_network_address_space
  location            = azurerm_resource_group.myRg.location
  resource_group_name = azurerm_resource_group.myRg.name
  tags                = var.common_tags
}

resource "azurerm_subnet" "mySubnet" {
  name                 = "${azurerm_virtual_network.myVnet.name}-${var.subnet_name}"
  resource_group_name  = azurerm_resource_group.myRg.name
  virtual_network_name = azurerm_virtual_network.myVnet.name
  address_prefixes     = ["10.3.0.0/24"]
}

resource "azurerm_public_ip" "myPublicIp" {
  name                = "mypublicip-1"
  resource_group_name = azurerm_resource_group.myRg.name
  location            = azurerm_resource_group.myRg.location
  allocation_method   = "Static"
  domain_name_label   = "app1-vm-${random_string.myRandomString.id}"
  tags                = var.common_tags
  sku                 = lookup(var.public_ip_sku, var.resource_group_location, "Basic")
  # sku = var.public_ip_sku["eastus"] ---> SKU is going to be "Basic"

}

resource "azurerm_network_interface" "myVmNic" {
  name                = "vmnic"
  location            = azurerm_resource_group.myRg.location
  resource_group_name = azurerm_resource_group.myRg.name
  tags                = var.common_tags

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.mySubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.myPublicIp.id
  }
}
