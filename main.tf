terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "tfstatejz9671"
        storage_account_name = "tfstatejz28152"
        container_name       = "tfstatejz4714"
        key                  = "terraform.tfstate"
        access_key           = "5WJDar/QCSpzsGtAVzubBp2eXeNGYStL6+tfBvt1C3SadZ714pLK2yZHEvMtxQTqKSl2y6YZoAXr+AStyyS5Qg=="
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

module "storageaccount" {
  source      = "./modules/storageaccount"
  base_namest = var.rootvarstname
  rgnamest    = module.resourcegroup.rg_name_out
  locationst  = var.rootvarlocation
}
