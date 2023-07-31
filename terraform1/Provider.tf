terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.59.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "c5aee189-9b6b-4482-8d56-251b2a5e5c3c"
  client_id       = "70f6d6c5-48b7-434b-8fd6-d82949c94cc4"
  client_secret   = "kGF8Q~oZRv6mckxNDyIwC.MZ7r5e-lVZ.N7Src~a"
  tenant_id       = "ed64f889-ef1e-403b-99e4-8d944aaa1df3"
  features {}
}

#changes made to test
