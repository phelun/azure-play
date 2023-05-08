terraform {
  backend "azurerm" {
    resource_group_name   = "fmbots-tf-states-rg"
    storage_account_name  = "fmbotsglobalbackend"
    container_name        = "tfstates"
    key                   = "phelun-azure-play/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.26.0"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "phelunfmbotsFirstRg"
  location = "uksouth"
}