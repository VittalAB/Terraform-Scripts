# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
 }

# resource "azurerm_resource_group" "rg" {
#   count = 3
#   # to access the variables use var keyword 
#   # name     = var.az_rg_names[count.index]
#   name = "MyRG ${count.index}" # even this works 
#   location = "westus2"
# }


resource "azurerm_resource_group" "rg" {
  for_each = {
    "a_group" = "eastus"
    "b_group" = "westus2"
  }
  name = each.key
  location = each.value
}
