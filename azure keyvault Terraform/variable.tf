variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "POC"
}

variable "location" {
  description = "The Azure region location."
  type        = string
  default     = "eastus"
}

variable "tenant_id" {
  description = "The Azure tenant ID."
  type        = string
  default = "9188040d-6c67-4c5b-b112-36a304b66dad"
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

