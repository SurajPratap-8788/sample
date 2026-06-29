terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "test-rg"
    storage_account_name = "stg228"
    container_name       = "tnc228"
    key                  = "prod.tfstate"
  }
}
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "d45d303f-5dbd-4fbf-9adb-39c652a0547d"
}
