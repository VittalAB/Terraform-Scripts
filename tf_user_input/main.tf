terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

variable "az_rg_name" {
  description = "Enter the name for resource group"
}

variable "az_rg_location" {
  description = "Enter the location for the same"
}

provider "azurerm" {
  features {}
 }


resource "azurerm_resource_group" "rg" {
  name = var.az_rg_name
  location = var.az_rg_location
}
