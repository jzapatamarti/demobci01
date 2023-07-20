terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }

}

provider "azurerm" {
  features {}
}

module "resourcegroup" {
  source    = "./modules/resourcegroup"
  base_name = var.rootvarrgname
  location  = var.rootvarlocation
}
