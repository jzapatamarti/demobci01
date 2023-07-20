resource "azurerm_resource_group" "tfdemorg" {
  name     = var.base_name
  location = var.location

  tags = {
    "Environment" = "Production"
  }
}
