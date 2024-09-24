## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.azureRg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_virtual_network.myVnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_business_unit"></a> [business\_unit](#input\_business\_unit) | Business Unit Name of Company | `string` | `"hr"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Working Environment Name | `set(string)` | <pre>[<br>  "dev1",<br>  "qa1",<br>  "staging1",<br>  "prod1"<br>]</pre> | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group Name | `string` | `"tutorialRg"` | no |
| <a name="input_resoure_group_location"></a> [resoure\_group\_location](#input\_resoure\_group\_location) | Resource Group Location | `string` | `"East US"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Azure Subscription ID | `string` | n/a | yes |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | Virtual Network Name | `string` | `"myVnet"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_id"></a> [resource\_group\_id](#output\_resource\_group\_id) | Resource Group ID |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | Resource Group name |
| <a name="output_virtual_network_name_keys_function"></a> [virtual\_network\_name\_keys\_function](#output\_virtual\_network\_name\_keys\_function) | Virtual Network - Terraform keys() function |
| <a name="output_virtual_network_name_list_one_input"></a> [virtual\_network\_name\_list\_one\_input](#output\_virtual\_network\_name\_list\_one\_input) | Virtual Network - For Loop One Input and List Output with VNET Name |
| <a name="output_virtual_network_name_list_two_inputs"></a> [virtual\_network\_name\_list\_two\_inputs](#output\_virtual\_network\_name\_list\_two\_inputs) | Virtual Network - For Loop Two Inputs, List Output which is Iterator i (var.environment) |
| <a name="output_virtual_network_name_map_one_input"></a> [virtual\_network\_name\_map\_one\_input](#output\_virtual\_network\_name\_map\_one\_input) | Virtual Network - For Loop One Input and Map Output with VNET ID and VNET Name |
| <a name="output_virtual_network_name_map_two_inputs"></a> [virtual\_network\_name\_map\_two\_inputs](#output\_virtual\_network\_name\_map\_two\_inputs) | Virtual Network - For Loop Two Inputs and Map Output with Iterator env and VNET Name |
| <a name="output_virtual_network_name_values_function"></a> [virtual\_network\_name\_values\_function](#output\_virtual\_network\_name\_values\_function) | Virtual Network - Terraform values() function |
