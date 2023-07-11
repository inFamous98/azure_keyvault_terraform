variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "keyvaults" {
  description = "Map of key vault configurations"
  type        = map(object({
    keyvault_location              = string
    keyvault_sku_name              = string
    object_id                      = string
    application_id                 = string
    tenant_id                      = string
    key_permissions                = list(string)
    secret_permissions             = list(string)
    certificate_permissions        = list(string)
    storage_permissions            = list(string)
    enabled_for_deployment          = bool
    enabled_for_disk_encryption     = bool
    enabled_for_template_deployment = bool
    enable_rbac_authorization       = bool
    purge_protection_enabled        = bool
    public_network_access_enabled   = bool
    soft_delete_retention_days      = number
    network_acls = object({
      bypass           = string
      default_action   = string
      ip_rules         = list(string)
      virtual_network_subnet_ids = list(string)
    })
    contact = object({
      email = string
      name  = string
      phone = string
    })
    tags                           = map(string)
  }))
}
