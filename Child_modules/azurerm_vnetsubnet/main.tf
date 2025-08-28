resource "azurerm_virtual_network" "vnetsubnet123" {
  for_each = var.vnetsubnet
  name                = each.value.vnet_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  
dynamic "subnet" {
  for_each = each.value.subnets
  content {
    name = subnet.value.subnet_name
    address_prefixes = subnet.value.address_prefixes
  }
  
}
  
}