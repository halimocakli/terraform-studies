business_unit                 = "it"
environment                   = "dev"
resource_group_name           = "rg"
virtual_network_name          = "vnet"
subnet_name                   = "subnet"
virtual_network_address_space = ["10.3.0.0/16", "10.4.0.0/16", "10.5.0.0/16"]


# Bu kısımda Resource Group Location değişikliği yaparak kaynak provize durumunu gözlemleyeceğiz.
resource_group_location = "eastus"
# resource_group_location = "westus2"
# resource_group_location = "westindia"
# resource_group_location = "eastus2"