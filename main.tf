# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

#Terraform backend configuration block
terraform {
  backend "azurerm" {
      #resource_group_name = "rg_projlcl"
      #storage_account_name = "apmmterraform"
      resource_group_name = "githubactionsrg"
      storage_account_name = "github21actions"
      container_name = "githubactionscontainer"
      key = "vnterraform.tfstate"    
  }
}