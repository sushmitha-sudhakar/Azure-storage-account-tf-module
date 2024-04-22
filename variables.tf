variable "resource_group_name" {
    description = "The name of the resource group in which to create the storage account"
}

variable "location" {
    description = "Azure location where the resource exists"
}

variable "storage_account_name" {
    description = "The name of the storage account"
}

variable "account_tier" {
    description = "The Tier to use for this storage account"
    default = "Standard"
}

variable "account_replication_type" {
    description = "The type of replication to use for this storage account"
    default = "LRS"
}

variable "account_kind" {
    description = "The Kind of account"
    default = "StorageV2"
}

variable "access_tier" {
    description = "The access Tier to use for this storage account."
}

variable "enable_https_traffic_only" {
    description = "Boolean flag to enable HTTPS"
    type = bool
    default = true
}

variable "min_tls_version" {
    description = "The minimum supported TLS version for the storage account"
    default = "TLS1_2"
}

variable "allow_nested_items_to_be_public" {
    description = "Allow or disallow nested items within this Account to opt into being public"
    type = bool
    default = true
}

variable "public_network_access_enabled" {
    description = "Allow or disallow public network access to storage account"
    type = bool
    default = true
}

variable "default_to_oauth_authentication" {
    description = "Allow or disallow Azure Active Directory authorization in the Azure portal when accessing the Storage Account."
    type = bool
    default = false
}

variable "is_hns_enabled" {
    description = "Allow or disallow hierarchical Namespace"
    type = bool
    default = false    
}

variable "queue_encryption_key_type" {
    description = "The encryption type of the queue service"
    default = "Service"
}

variable "table_encryption_key_type" {
    description = "The encryption type of the table service"
    default = "Service"
}

variable "infrastructure_encryption_enabled" {
    description = "Allow or disallow infrastructure encryption"
    type = bool
    default = false    
}

variable "blob_allowed_headers" {
    description = "A list of blob headers that are allowed to be a part of the cross-origin request"
    type = list()
    default = ["*"]
}

variable "blob_allowed_methods" {
    description = "A list of HTTP methods that are allowed to be executed by the origin"
    type = list()
    default = ["GET"]
}

variable "blob_allowed_origins" {
    description = "A list of origin domains that will be allowed by CORS"
    type = list()
}

variable "blob_exposed_headers" {
    description = "A list of response headers that are exposed to CORS clients"
    type = list()
    default = ["*"]
}

variable "blob_max_age_in_seconds" {
    description = "The number of seconds the client should cache a preflight response"
    default = 3600
}

variable "custom_domain_name" {
    description = "The Custom Domain Name to use for the Storage Account"
}

variable "subdomain" {
    description = "Allow or disallow indirect CNAME validation for Custom Domain Name"
    type = bool
    default = false
}

variable "key_vault_key_id" {
    description = "The ID of the Key Vault Key"
}

variable "user_assigned_identity_id" {
    description = "The ID of a user assigned identity"
}

variable "retention_days" {
    description = "Specifies the number of days blob or logs should be retained"
    default = 90
}

variable "restore_days" {
    description = "Specifies the number of days that the blob can be restored"
    default = 90
}

variable "container_retention_days" {
    description = "Specifies the number of days that the container should be retained"
    default = 7
}

variable "identity_type" {
    description = "Specifies the type of Managed Service Identity that should be configured on the Storage Account"
    default = "SystemAssigned"
}

variable "identity_ids" {
    description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to the Storage Account"
}

variable "versioning_enabled" {
    description = "enable or disable versioning"
    type = bool
    default = false
}

variable "change_feed_enabled" {
}

variable "change_feed_retention_days" {}

variable "default_service_version" {}

variable "last_access_time_enabled" {}

variable "queue_allowed_headers" {}

variable "queue_allowed_methods" {}

variable "queue_allowed_origins" {}

variable "queue_exposed_headers" {}

variable "queue_max_age_in_seconds" {}

variable "delete_requests" {}

variable "read_requests" {}

variable "storage_analytics_version" {}

variable "write_requests" {}

variable "minute_metrics_enabled" {}

variable "include_apis" {}

variable "hour_metrics_enabled" {}

variable "shared_access_key_enabled" {}

variable "index_document" {}

variable "error_404_document" {}

variable "share_allowed_headers" {}

variable "share_allowed_methods" {}

variable "share_allowed_origins" {}

variable "share_exposed_headers" {}

variable "share_max_age_in_seconds" {}

variable "smb_versions" {}

variable "authentication_types" {}

variable "kerberos_encryption_type" {}

variable "channel_encryption_type" {}

variable "multichannel_enabled" {}

variable "large_file_share_enabled" {}

variable "default_network_rule" {}

variable "traffic_bypass" {}

variable "ip_rules" {}

variable "subnet_ids" {}

variable "endpoint_resource_id" {}

variable "endpoint_tenant_id" {}

variable "local_user_enabled" {}

variable "directory_type" {}

variable "domain_name" {}

variable "domain_guid" {}

variable "domain_sid" {}

variable "storage_sid" {}

variable "forest_name" {}

variable "netbios_domain_name" {}

variable "publish_internet_endpoints" {}

variable "publish_microsoft_endpoints" {}

variable "routing_choice" {}

variable "allow_protected_append_writes" {}

variable "immutability_state" {}

variable "immutability_days" {}

variable "sas_expiration_period" {}

variable "sas_expiration_action" {}

variable "allowed_copy_scope" {}

variable "sftp_enabled" {}

variable "dns_endpoint_type" {}