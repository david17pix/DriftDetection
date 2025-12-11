terraform {
  required_version = ">= 1.3"

  required_providers {
    azurerm = {
      version = "~>3.2"
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" { 
  features {}  
}
