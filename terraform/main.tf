###n RG Creation ##
resource "azurerm_resource_group" "test" {
  name     = var.resource_name
  location = var.location
}
