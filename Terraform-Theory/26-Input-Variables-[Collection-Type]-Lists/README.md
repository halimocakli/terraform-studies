---
TITLE: Terraform Input(Girdi) Değişkenleri - Koleksiyon Türü - List
DESCRIPTION: Koleksiyon Sınıfı Liste Türünde Terraform Input Değişkenleri hakkında bilgiler
---

## Step-01: Introduction

- Implement complex type constructors like `list`

## Step-02: Implement complex type cosntructors like `list`

- [Type Constraints(Tür Kısıtlamaları)](https://www.terraform.io/docs/language/expressions/types.html)
- **List veya Tuple:** bir değerler dizisini ifade eder. Örn: ["10.0.0.0/16", "10.1.0.0/16", 10.2.0.0/16].
- Bir _List_ veya _Tuple_'daki elemanlar, sıfırdan başlayarak ardışık tam sayılarla tanımlanır.
- `virtual_network_address_space` değişkeni için **list()** fonksiyonunu uygulayalım.

### c2-variables.tf

```t
# 7. Virtual Network address_space
variable "virtual_network_address_space" {
  description = "Virtual Network Address Space"
  type = list(string)
  default = ["10.0.0.0/16", "10.1.0.0/16", "10.2.0.0/16"]
}
```

### terraform.tfvars

```t
business_unit = "it"
environment = "dev"
resoure_group_name = "rg-list"
resoure_group_location = "eastus2"
virtual_network_name = "vnet-list"
subnet_name = "subnet-list"
virtual_network_address_space = ["10.3.0.0/16", "10.4.0.0/16", "10.5.0.0/16"]
```

## Step-03: c4-virtual-network.tf dosyası içerisindeki değişkenleri güncelleyelim.

```t
# Create Virtual Network
resource "azurerm_virtual_network" "myvnet" {
  name                = "${var.business_unit}-${var.environment}-${var.virtual_network_name}"
  #address_space      = ["10.0.0.0/16"]
  address_space       = var.virtual_network_address_space
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
}
```

## Step-04: Update subnet range

```t
# Create Subnet
resource "azurerm_subnet" "mysubnet" {
  #name                 = var.subnet_name
  name                 = "${azurerm_virtual_network.myvnet.name}-${var.subnet_name}"
  resource_group_name  = azurerm_resource_group.myrg.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes     = ["10.3.0.0/24"]
}
```

## Step-06: Execute Terraform Commands

```t
# Initialize Terraform
terraform init

# Validate Terraform configuration files
terraform validate

# Format Terraform configuration files
terraform fmt

# Review the terraform plan
terraform plan

# Terraform Apply
terraform apply -auto-approve

# Observation
1. Verify Virtual Network using Azure Management Console
2. You should see 3 address spaces for Vnet
```

## Step-07: Reference List values individually

```t
# Reference List values individually
var.virtual_network_address_space[0]
var.virtual_network_address_space[1]
var.virtual_network_address_space[2]

# Access
address_space       = [var.virtual_network_address_space[0]]
```

## Step-08: Update c4-virtual-network.tf

```t
# Create Virtual Network
resource "azurerm_virtual_network" "myvnet" {
  name                = "${var.business_unit}-${var.environment}-${var.virtual_network_name}"
  #address_space      = ["10.0.0.0/16"]
  #address_space       = var.virtual_network_address_space
  address_space       = [var.virtual_network_address_space[0]]
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
}
```

## Step-09: Execute Terraform Commands

```t
# Terraform Plan
terraform plan

# Terraform Apply
terraform apply -auto-approve

# Observation
1. Verify the Virtual Network using Azure Management Console
2. You should see only one address space for vnet
```

## Step-10: Clean-Up

```t
# Destroy Resources
terraform destroy -auto-approve

# Delete Files
rm -rf .terraform*
rm -rf terraform.tfstate*

# Rollback c4-virtual-network.tf (Below line should be enabled)
address_space       = var.virtual_network_address_space
```

## References

- [Terraform Input Variables](https://www.terraform.io/docs/language/values/variables.html)
