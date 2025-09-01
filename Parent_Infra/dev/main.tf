module "resourse_group" {
  source = "../../Child_modules/azurerm_resource_group"
  rg_names = var.parent_rg
  
}

module "vnetsubnet371" {
 # depends_on = [module.resourse_group]
  source = "../../Child_modules/azurerm_vnetsubnet"
  vnetsubnet = var.parent_vnetsubnets
  
}