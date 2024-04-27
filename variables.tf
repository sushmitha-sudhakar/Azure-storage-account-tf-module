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
    description = "The access Tier to use for this storage account"
}

variable "enable_https_traffic_only" {
    description = "Allow or disallow HTTPS"
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
    description = "Allow or disallow Azure Active Directory authorization in the Azure portal when accessing the Storage Account"
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
    type = number
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
    type = number
    default = 7
}

variable "restore_days" {
    description = "Specifies the number of days that the blob can be restored"
    type = number
    default = 7
}

variable "container_retention_days" {
    description = "Specifies the number of days that the container should be retained"
    type = number
    default = 7
}

variable "identity_type" {
    description = "Specifies the type of Managed Service Identity that should be configured on the Storage Account"
    default = "SystemAssigned"
}

variable "identity_ids" {
    description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to the Storage Account"
    type = list()
}

variable "versioning_enabled" {
    description = "enable or disable versioning"
    type = bool
    default = false
}

variable "change_feed_enabled" {
    description = "enable or disable blob service properties for change feed events"
    type = bool
    default = false
}

variable "change_feed_retention_days" {
    description = "The duration of change feed events retention in days"
    type = number
    default = null
}

variable "default_service_version" {
    description = "The API Version which should be used by default for requests to the Data Plane API"
}

variable "last_access_time_enabled" {
    description = "enable or disable last access time based tracking"
    type = bool
    default = false
}

variable "queue_allowed_headers" {
    description = "A list of queue headers that are allowed to be a part of the cross-origin request"
    type = list()
    default = ["*"]
}

variable "queue_allowed_methods" {
    description = "A list of HTTP methods that are allowed to be executed by the origin"
    type = list()
    default = ["GET"]
}

variable "queue_allowed_origins" {
    description = "A list of origin domains that will be allowed by CORS"
    type = list()
}

variable "queue_exposed_headers" {
    description = "A list of response headers that are exposed to CORS clients"
    type = list()
    default = ["*"]
}

variable "queue_max_age_in_seconds" {
    description = "The number of seconds the client should cache a preflight response"
    type = number
    default = 3600
}

variable "delete_requests" {
    description = "Indicates whether all delete requests should be logged"
    type = bool
    default = false
}

variable "read_requests" {
    description = "Indicates whether all read requests should be logged"
    type = bool
    default = false
}

variable "storage_analytics_version" {
    description = "The version of storage analytics to configure"
}

variable "write_requests" {
    description = "Indicates whether all write requests should be logged"    
    type = bool
    default = false
}

variable "minute_metrics_enabled" {
    description = "enable or disable  minute metrics for the Queue service"
    type = bool
    default = false    
}

variable "include_apis" {
    description = "Indicates whether metrics should generate summary statistics for called API operations"
    type = bool
    default = false  
}

variable "hour_metrics_enabled" {
    description = "enable or disable hour metrics for the Queue service"
    type = bool
    default = false 
}

variable "shared_access_key_enabled" {
    description = "Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key"
    type = bool
    default = true
}

variable "index_document" {
    description = "The webpage that Azure Storage serves for requests to the root of a website or any subfolder"
}

variable "error_404_document" {
    description = "The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file"
}

variable "share_allowed_headers" {
    description = "A list of share headers that are allowed to be a part of the cross-origin request"
    type = list()
    default = ["*"]
}

variable "share_allowed_methods" {
    description = "A list of HTTP methods that are allowed to be executed by the origin"
    type = list()
    default = ["GET"]    
}

variable "share_allowed_origins" {
    description = "A list of origin domains that will be allowed by CORS"
    type = list()
}

variable "share_exposed_headers" {
    description = "A list of response headers that are exposed to CORS clients"
    type = list()
    default = ["*"]
}

variable "share_max_age_in_seconds" {
    description = "The number of seconds the client should cache a preflight response"
    type = number
    default = 3600
}

variable "smb_versions" {
    description = "A set of SMB protocol versions"
}

variable "authentication_types" {
    description = "A set of SMB authentication methods"
}

variable "kerberos_encryption_type" {
    description = "A set of Kerberos ticket encryption"
}

variable "channel_encryption_type" {
    description = "A set of SMB channel encryption"
}

variable "multichannel_enabled" {
    description = "enable or disable multichannel"
    default = false
}

variable "large_file_share_enabled" {
    description = "enable or disable large File Share"
}

variable "default_network_rule" {
    description = "Specifies the default action of allow or deny when no other rules match"
}

variable "traffic_bypass" {
    description = "Specifies whether traffic is bypassed for Logging/Metrics/AzureServices"
}

variable "ip_rules" {
    description = "List of public IP or IP ranges in CIDR Format"
}

variable "subnet_ids" {
    description = "A list of resource ids for subnets"
    type = list()
}

variable "endpoint_resource_id" {
   description = "The ID of the Azure resource that should be allowed access to the target storage account" 
}

variable "endpoint_tenant_id" {
    description = "The tenant id of the resource of the resource access rule to be granted access"
}

variable "local_user_enabled" {
    description = "enable or disable local user"
    type = bool
    default = true
}

variable "directory_type" {
    description = "Specifies the directory service used"
}

variable "domain_name" {
    description = "Specifies the primary domain that the AD DNS server is authoritative for"
}

variable "domain_guid" {
    description = "Specifies the domain GUID"
}

variable "domain_sid" {
    description = "Specifies the security identifier (SID)"
}

variable "storage_sid" {
    description = "Specifies the security identifier (SID) for Azure Storage"
}

variable "forest_name" {
    description = "Specifies the Active Directory forest"
}

variable "netbios_domain_name" {
    description = "Specifies the NetBIOS domain name"
}

variable "publish_internet_endpoints" {
    description = "publish or suppress internet routing storage endpoints"
    type = bool
    default = false
}

variable "publish_microsoft_endpoints" {
    description = "publish or suppress Microsoft routing storage endpoints"
    type = bool
    default = false
}

variable "routing_choice" {
    description = "Specifies the kind of network routing opted by the user"
    default = "MicrosoftRouting"
}

variable "allow_protected_append_writes" {
    description = "enable or disable writting new blocks to an append blob while maintaining immutability protection and compliance"
    type = bool
}

variable "immutability_state" {
    description = "Defines the mode of the policy"
}

variable "immutability_days" {
    description = "The immutability period for the blobs in the container since the policy creation, in days"
    type = number
}

variable "sas_expiration_period" {
    description = "The SAS expiration period in format of DD.HH:MM:SS"
}

variable "sas_expiration_action" {
    description = "The SAS expiration action"
    default = "Log"
}

variable "allowed_copy_scope" {
    description = "Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet"
}

variable "sftp_enabled" {
    description = "enable or disable SFTP for the storage account"
    type = bool
    default = false
}

variable "dns_endpoint_type" {
    description = "Specifies which DNS endpoint type to use"
    default = "Standard"
}