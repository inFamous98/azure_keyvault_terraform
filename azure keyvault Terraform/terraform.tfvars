resource_group_name = "POC"

keyvaults = {
  example1 = {
    keyvault_location              = "eastus"
    keyvault_sku_name              = "standard"
    object_id                      = "11111111-1111-1111-1111-111111111111"
    application_id                 = ""
    tenant_id                      = "9188040d-6c67-4c5b-b112-36a304b66dad"
    key_permissions                = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
    secret_permissions             = ["Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"]
    certificate_permissions        = ["Backup", "Create", "Delete", "DeleteIssuers", "Get", "GetIssuers", "Import", "List", "ListIssuers", "ManageContacts", "ManageIssuers", "Purge", "Recover", "Restore", "SetIssuers", "Update"]
    storage_permissions            = []
    enabled_for_deployment          = true
    enabled_for_disk_encryption     = false
    enabled_for_template_deployment = false
    enable_rbac_authorization       = false
    purge_protection_enabled        = false
    public_network_access_enabled   = true
    soft_delete_retention_days      = 30

    network_acls = {
      bypass           = "AzureServices"
      default_action   = "Deny"
      ip_rules         = []
      virtual_network_subnet_ids = []
    }

    contact = {
      email = "example1@example.com"
      name  = "John Doe"
      phone = "1234567890"
    }

    tags = {
      environment = "dev"
    }
  }
  example2 = {
    keyvault_location              = "westus"
    keyvault_sku_name              = "premium"
    object_id                      = "22222222-2222-2222-2222-222222222222"
    application_id                 = ""
    tenant_id                      = "9188040d-6c67-4c5b-b112-36a304b66dad"
    key_permissions                = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
    secret_permissions             = ["Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"]
    certificate_permissions        = ["Backup", "Create", "Delete", "DeleteIssuers", "Get", "GetIssuers", "Import", "List", "ListIssuers", "ManageContacts", "ManageIssuers", "Purge", "Recover", "Restore", "SetIssuers", "Update"]
    storage_permissions            = []
    enabled_for_deployment          = true
    enabled_for_disk_encryption     = false
    enabled_for_template_deployment = false
    enable_rbac_authorization       = false
    purge_protection_enabled        = false
    public_network_access_enabled   = true
    soft_delete_retention_days      = 30

    network_acls = {
      bypass           = "AzureServices"
      default_action   = "Deny"
      ip_rules         = []
      virtual_network_subnet_ids = []
    }

    contact = {
      email = "example2@example.com"
      name  = "Jane Smith"
      phone = "9876543210"
    }

    tags = {
      environment = "prod"
    }
  }
}
