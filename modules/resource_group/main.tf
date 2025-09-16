# Create the resource group
resource "azurerm_resource_group" "rg" {
  for_each = {
    for rg in local.definition : "${rg.name}" => rg
  }
  name     = each.value.name
  location = try(each.value.location, "southeast")
  tags     = try(each.value.tags, null)
}
