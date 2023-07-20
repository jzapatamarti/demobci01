resource "azurerm_storage_account" "tfdemost" {
  name                     = var.base_namest
  resource_group_name      = var.rgnamest
  location                 = var.locationst
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    "Environment" = "Production"
  }
}
