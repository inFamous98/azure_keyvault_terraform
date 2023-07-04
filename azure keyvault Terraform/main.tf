module "resource_group" {
  source              = "./resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "keyvaults" {
  source              = "./keyvaults"
  resource_group_name = var.resource_group_name
  location            = var.location
  keyvaults           = var.keyvaults
}