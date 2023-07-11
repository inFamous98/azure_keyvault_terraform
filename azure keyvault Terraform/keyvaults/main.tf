resource "azurerm_key_vault" "example" {
  for_each            = var.keyvaults

  name                = each.key
  location            = each.value.keyvault_location
  resource_group_name = var.resource_group_name
  tenant_id           = each.value.tenant_id
  sku_name            = each.value.keyvault_sku_name

  access_policy {
    tenant_id                  = each.value.tenant_id
    object_id                  = each.value.object_id
    application_id             = each.value.application_id

    key_permissions            = each.value.key_permissions
    secret_permissions         = each.value.secret_permissions
    certificate_permissions    = each.value.certificate_permissions
    storage_permissions        = each.value.storage_permissions
  }

  enabled_for_deployment          = each.value.enabled_for_deployment
  enabled_for_disk_encryption     = each.value.enabled_for_disk_encryption
  enabled_for_template_deployment = each.value.enabled_for_template_deployment
  enable_rbac_authorization       = each.value.enable_rbac_authorization
  purge_protection_enabled        = each.value.purge_protection_enabled
  public_network_access_enabled   = each.value.public_network_access_enabled
  soft_delete_retention_days      = each.value.soft_delete_retention_days

  network_acls {
    bypass           = each.value.network_acls.bypass
    default_action   = each.value.network_acls.default_action
    ip_rules         = each.value.network_acls.ip_rules
    virtual_network_subnet_ids = each.value.network_acls.virtual_network_subnet_ids
  }

  contact {
    email = each.value.contact.email
    name  = each.value.contact.name
    phone = each.value.contact.phone
  }

  tags = each.value.tags
}
