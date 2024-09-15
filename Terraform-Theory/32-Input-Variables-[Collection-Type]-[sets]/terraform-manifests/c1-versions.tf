terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  use_cli         = true
}

resource "random_string" "myRandomString" {
  for_each = var.environment
  length   = 6
  upper    = false
  special  = false
  numeric  = false
}
