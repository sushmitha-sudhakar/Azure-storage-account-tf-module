resource "azurerm_storage_account" "sa" {
  name                              = var.storage_account_name
  resource_group_name               = azurerm_resource_group.rg.name
  location                          = azurerm_resource_group.rg.location
  account_kind                      = var.account_kind
  account_tier                      = var.account_tier
  account_replication_type          = var.account_replication_type
  access_tier                       = var.access_tier
  enable_https_traffic_only         = var.enable_https_traffic_only
  min_tls_version                   = var.min_tls_version
  allow_nested_items_to_be_public   = var.allow_nested_items_to_be_public
  public_network_access_enabled     = var.public_network_access_enabled
  shared_access_key_enabled         = var.shared_access_key_enabled
  default_to_oauth_authentication   = var.default_to_oauth_authentication
  is_hns_enabled                    = var.is_hns_enabled
  queue_encryption_key_type         = var.queue_encryption_key_type
  table_encryption_key_type         = var.table_encryption_key_type
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  allowed_copy_scope                = var.allowed_copy_scope
  sftp_enabled                      = var.sftp_enabled
  dns_endpoint_type                 = var.dns_endpoint_type

  custom_domain {
    name          = var.custom_domain_name
    use_subdomain = var.subdomain
  }

  customer_managed_key {
    key_vault_key_id          = var.key_vault_key_id
    user_assigned_identity_id = var.user_assigned_identity_id
  }

  identity {
    type         = var.identity_type
    identity_ids = var.identity_ids
  }

  blob_properties {
    cors_rule {
      allowed_headers    = var.blob_allowed_headers
      allowed_methods    = var.blob_allowed_methods
      allowed_origins    = var.blob_allowed_origins
      exposed_headers    = var.blob_exposed_headers
      max_age_in_seconds = var.blob_max_age_in_seconds
    }

    delete_retention_policy {
      days = var.retention_days
    }

    restore_policy {
      days = var.restore_days
    }

    versioning_enabled            = var.versioning_enabled
    change_feed_enabled           = var.change_feed_enabled
    change_feed_retention_in_days = var.change_feed_retention_days
    default_service_version       = var.default_service_version
    last_access_time_enabled      = var.last_access_time_enabled

    container_delete_retention_policy {
      days = var.container_retention_days
    }
  }

  queue_properties {
    cors_rule {
      allowed_headers    = var.queue_allowed_headers
      allowed_methods    = var.queue_allowed_methods
      allowed_origins    = var.queue_allowed_origins
      exposed_headers    = var.queue_exposed_headers
      max_age_in_seconds = var.queue_max_age_in_seconds
    }

    logging {
      delete                = var.delete_requests
      read                  = var.read_requests
      version               = var.storage_analytics_version
      write                 = var.write_requests
      retention_policy_days = var.retention_days
    }

    minute_metrics {
      enabled               = var.minute_metrics_enabled
      version               = var.storage_analytics_version
      include_apis          = var.include_apis
      retention_policy_days = var.retention_days
    }

    hour_metrics {
      enabled               = var.hour_metrics_enabled
      version               = var.storage_analytics_version
      include_apis          = var.include_apis
      retention_policy_days = var.retention_days
    }

  }

  static_website {
    index_document     = var.index_document
    error_404_document = var.error_404_document
  }

  share_properties {
    cors_rule {
      allowed_headers    = var.share_allowed_headers
      allowed_methods    = var.share_allowed_methods
      allowed_origins    = var.share_allowed_origins
      exposed_headers    = var.share_exposed_headers
      max_age_in_seconds = var.share_max_age_in_seconds
    }

    retention_policy {
      days = var.retention_days
    }

    smb {
      versions                        = var.smb_versions
      authentication_types            = var.authentication_types
      kerberos_ticket_encryption_type = var.kerberos_encryption_type
      channel_encryption_type         = var.channel_encryption_type
      multichannel_enabled            = var.multichannel_enabled
    }
  }

  network_rules {
    default_action             = var.default_network_rule
    bypass                     = var.traffic_bypass
    ip_rules                   = var.ip_rules
    virtual_network_subnet_ids = var.subnet_ids

    private_link_access {
      endpoint_resource_id = var.endpoint_resource_id
      endpoint_tenant_id   = var.endpoint_tenant_id
    }
  }

  large_file_share_enabled = var.large_file_share_enabled
  local_user_enabled       = var.local_user_enabled
  azure_files_authentication {
    directory_type = var.directory_type
    active_directory {
      domain_name         = var.domain_name
      domain_guid         = var.domain_guid
      domain_sid          = var.domain_sid
      storage_sid         = var.storage_sid
      forest_name         = var.forest_name
      netbios_domain_name = var.netbios_domain_name
    }
  }

  routing {
    publish_internet_endpoints  = var.publish_internet_endpoints
    publish_microsoft_endpoints = var.publish_microsoft_endpoints
    choice                      = var.routing_choice
  }

  immutability_policy {
    allow_protected_append_writes = var.allow_protected_append_writes
    state                         = var.immutability_state
    period_since_creation_in_days = var.immutability_days
  }

  sas_policy {
    expiration_period = var.sas_expiration_period
    expiration_action = var.sas_expiration_action
  }
}

