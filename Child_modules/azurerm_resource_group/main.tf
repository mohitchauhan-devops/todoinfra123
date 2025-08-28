resource "azurerm_resource_group" "rg-pom" {
    for_each = var.rg_names
  name = each.value.resource_group_name
  location = each.value.location
}