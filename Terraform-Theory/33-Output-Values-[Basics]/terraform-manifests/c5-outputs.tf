output "resource_group_id" {
  description = "Resource Group ID"
  value       = azurerm_resource_group.myrg.id
  sensitive   = true
}
output "resource_group_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.myrg.name
}

output "virtual_network_name" {
  description = "Virtal Network Name"
  value       = azurerm_virtual_network.myvnet.name
}

output "subscription_id" {
  description = "Azure Subscription ID"
  value       = var.subscription_id
  sensitive   = true
}

