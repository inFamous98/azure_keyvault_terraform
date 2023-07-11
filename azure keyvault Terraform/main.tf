module "resource_group" {
  source              = "./resource_group"
  resource_group_name = var.resource_group_name
}

module "keyvault" {
  source              = "./keyvaults"
  resource_group_name = var.resource_group_name
  keyvaults           = var.keyvaults
}
