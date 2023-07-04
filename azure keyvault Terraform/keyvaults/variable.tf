variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region location."
  type        = string
}

variable "keyvaults" {
  description = "Map of key vault configurations"
  type        = map(object({
    keyvault_location      = string
    keyvault_sku_name      = string
    object_id              = string
    key_permissions        = list(string)
    secret_permissions     = list(string)
    certificate_permissions = list(string)
    tags                   = map(string)
  }))
}


variable "tenant_id" {
  description = "The Azure tenant ID."
  type        = string
  default = "9188040d-6c67-4c5b-b112-36a304b66dad"
}