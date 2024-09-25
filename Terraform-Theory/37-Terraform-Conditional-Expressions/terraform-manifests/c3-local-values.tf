locals {
  # Use-case-1: Shorten the names for more readability
  rg_name   = "${var.business_unit}-${var.environment}-${var.resource_group_name}"
  vnet_name = "${var.business_unit}-${var.environment}-${var.virtual_network_name}"

  # Use-case-2: Common tags to be assigned to all resources
  service_name = "Demo Services"
  owner        = "Halim Can Ocakli"
  common_tags = {
    Service = local.service_name
    Owner   = local.owner
  }

  // Option-1: With Equals Sign [==]
  vnet_address_space = (var.environment == "dev" ? var.vnet_address_space_dev : var.vnet_address_space_all)

  // Option-2: With Not Equals Sign [!=]
  // vnet_address_space = (var.environment != "dev" ? var.vnet_address_space_all : var.vnet_address_space_dev)



}
