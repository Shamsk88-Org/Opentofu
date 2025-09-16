### Provider block ###
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.6.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-in-dev-environment-01"
    storage_account_name = "proddevops2025"
    container_name       = "production"
    key                  = "shamsklab"
    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}
  tenant_id       = "648b628e-c17f-4d43-8193-72e3f4d7499d"
  subscription_id = "24143a81-fcba-4b21-9b28-c910b75e6580"
}
