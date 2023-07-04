resource "azurerm_key_vault" "example" {
  for_each            = var.keyvaults

  name                = each.key
  location            = each.value.keyvault_location
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id
  sku_name            = each.value.keyvault_sku_name

  access_policy {
    tenant_id = var.tenant_id
    object_id = each.value.object_id

    key_permissions         = each.value.key_permissions
    secret_permissions      = each.value.secret_permissions
    certificate_permissions = each.value.certificate_permissions
  }

  tags = each.value.tags
}
