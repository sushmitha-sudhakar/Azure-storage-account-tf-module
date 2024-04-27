# Azure - Storage Account Terraform Module

This module will create a storage account in Microsoft Azure.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Modules

No modules.


## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.sa](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the storage account | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Azure location where the resource exists | `string` | n/a | yes |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | The name of the storage account | `string` | n/a | yes |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | The Tier to use for this storage account | `string` | `null` | yes |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | The type of replication to use for this storage account | `string` | `null` | yes |
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | The Kind of account | `string` | `StorageV2` | no |
| <a name="input_access_tier"></a> [access\_tier](#input\_access\_tier) | The access Tier to use for this storage account | `string` | `Hot` | no |
| <a name="input_enable_https_traffic_only"></a> [enable\_https\_traffic\_only](#input\_enable\_https\_traffic\_only) | Allow or disallow HTTPS | `bool`| `true` | no |
| <a name="input_min_tls_version"></a> [min\_tls\_version](#input\_min\_tls\_version) | The minimum supported TLS version for the storage account | `string`| `TLS1_2` | no |
| <a name="input_allow_nested_items_to_be_public"></a> [allow_nested\_items\_to\_be\_public](#input\_allow_nested\_items\_to\_be\_public) | Allow or disallow nested items within this Account to opt into being public | `bool`| `true` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Allow or disallow public network access to storage account | `bool`| `true` | no |
| <a name="input_default_to_oauth_authentication"></a> [default\_to\_oauth\_authentication](#input\_default\_to\_oauth\_authentication) | Allow or disallow Azure Active Directory authorization in the Azure portal when accessing the Storage Account | `bool`| `false` | no |
| <a name="input_is_hns_enabled"></a> [is\_hns\_enabled](#input\_is\_hns\_enabled) | Allow or disallow hierarchical Namespace | `bool`| `null` | no |
| <a name="input_queue_encryption_key_type"></a> [queue\_encryption\_key\_type](#input\_queue\_encryption\_key\_type) | The encryption type of the queue service | `string`| `Service` | no |
| <a name="input_table_encryption_key_type"></a> [table\_encryption\_key\_type](#input\_table\_encryption\_key\_type) | The encryption type of the table service | `string`| `Service` | no |
| <a name="input_infrastructure_encryption_enabled"></a> [infrastructure\_encryption\_enabled](#input\_infrastructure\_encryption\_enabled) | Allow or disallow infrastructure encryption | `bool`| `false` | no |
| <a name="input_blob_allowed_headers"></a> [blob\_allowed\_headers](#input\_blob\_allowed\_headers) | A list of blob headers that are allowed to be a part of the cross-origin request | `list`| `null` | yes |
| <a name="input_blob_allowed_methods"></a> [blob\_allowed\_methods](#input\_blob\_allowed\_methods) | A A list of HTTP methods that are allowed to be executed by the origin | `list`| `null` | yes |
| <a name="input_blob_allowed_origins"></a> [blob\_allowed\_origins](#input\_blob\_allowed\_origins) | A list of origin domains that will be allowed by CORS | `list`| `null` | yes |
| <a name="input_blob_exposed_headers"></a> [blob\_exposed\_headers](#input\_blob\_exposed\_headers) | A list of response headers that are exposed to CORS clients | `list`| `null` | yes |
| <a name="input_blob_max_age_in_seconds"></a> [blob\_max\_age\_in\_seconds](#input\_blob\_max\_age\_in\_seconds) | The number of seconds the client should cache a preflight response | `number`| `null` | yes |
| <a name="input_custom_domain_name"></a> [custom\_domain\_name](#input\_custom\_domain\_name) | The Custom Domain Name to use for the Storage Account | `string`| `null` | yes |
| <a name="input_subdomain"></a> [subdomain](#input\_subdomain) | Allow or disallow indirect CNAME validation for Custom Domain Name | `bool`| `null` | no |
| <a name="input_key_vault_key_id"></a> [key\_vault\_key\_id](#input\_key\_vault\_key\_id) | The ID of the Key Vault Key | `string`| `null` | yes |
| <a name="input_user_assigned_identity_id"></a> [user\_assigned\_identity\_id](#input\_user\_assigned\_identity\_id) | The ID of a user assigned identity | `string`| `null` | yes |
| <a name="input_retention_days"></a> [retention\_days](#input\_retention\_days) | Specifies the number of days blob or logs should be retained | `number`| `7` | no |
| <a name="input_restore_days"></a> [restore\_days](#input\_restore\_days) | Specifies the number of days that the blob can be restored | `number`| `7` | yes |
| <a name="input_container_retention_days"></a> [container\_retention\_days](#input\_container\_retention\_days) | Specifies the number of days that the container should be retained | `number`| `7` | yes |
| <a name="input_identity_type"></a> [identity\_type](#input\_container\_identity\_type) | Specifies the type of Managed Service Identity that should be configured on the Storage Account | `string`| `null` | yes |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | Specifies a list of User Assigned Managed Identity IDs to be assigned to the Storage Account | `list`| `null` | no |
| <a name="input_versioning_enabled"></a> [versioning\_enabled](#input\_versioning\_enabled) | enable or disable versioning | `bool`| `false` | no |
| <a name="input_change_feed_enabled"></a> [change\_feed\_enabled](#input\_change\_feed\_enabled) | enable or disable blob service properties for change feed events | `bool`| `false` | no |
| <a name="input_change_feed_retention_days"></a> [change\_feed\_retention\_days](#input\_change\_feed\_retention\_days) | The duration of change feed events retention in days | `number`| `null` | no |
| <a name="input_default_service_version"></a> [default\_service\_version](#input\_default\_service\_version) | The API Version which should be used by default for requests to the Data Plane API | `string`| `null` | no |
| <a name="input_last_access_time_enabled"></a> [last\_access\_time\_enabled](#input\_last\_access\_time\_enabled) | enable or disable last access time based tracking | `bool`| `false` | no |
| <a name="input_queue_allowed_headers"></a> [queue\_allowed\_headers](#input\_queue\_allowed\_headers) | A list of queue headers that are allowed to be a part of the cross-origin request | `list`| `null` | yes |
| <a name="input_queue_allowed_methods"></a> [queue\_allowed\_methods](#input\_queue\_allowed\_methods) | A A list of HTTP methods that are allowed to be executed by the origin | `list`| `null` | yes |
| <a name="input_queue_allowed_origins"></a> [queue\_allowed\_origins](#input\_queue\_allowed\_origins) | A list of origin domains that will be allowed by CORS | `list`| `null` | yes |
| <a name="input_queue_exposed_headers"></a> [queue\_exposed\_headers](#input\_queue\_exposed\_headers) | A list of response headers that are exposed to CORS clients | `list`| `null` | yes |
| <a name="input_queue_max_age_in_seconds"></a> [queue\_max\_age\_in\_seconds](#input\_queue\_max\_age\_in\_seconds) | The number of seconds the client should cache a preflight response | `number`| `null` | yes |
| <a name="input_delete_requests"></a> [delete\_requests](#input\_delete\_requests) | Indicates whether all delete requests should be logged | `bool`| `null` | yes |
| <a name="input_read_requests"></a> [read\_requests](#input\_read\_requests) | Indicates whether all read requests should be logged | `bool`| `null` | yes |
| <a name="input_storage_analytics_version"></a> [storage\_analytics\_version](#input\_storage\_analytics\_version) | The version of storage analytics to configure | `string`| `null` | yes |
| <a name="input_write_requests"></a> [write\_requests](#input\_write\_requests) | Indicates whether all write requests should be logged | `bool`| `null` | yes |
| <a name="input_minute_metrics_enabled"></a> [minute\_metrics\_enabled](#input\_minute\_metrics\_enabled) | enable or disable  minute metrics for the Queue service | `bool`| `null` | yes |
| <a name="input_include_apis"></a> [include\_apis](#input\_include\_apis) | Indicates whether metrics should generate summary statistics for called API operations | `bool`| `null` | no |
| <a name="input_hour_metrics_enabled"></a> [hour\_metrics\_enabled](#input\_hour\_metrics\_enabled) | enable or disable  hour metrics for the Queue service | `bool`| `null` | yes |
| <a name="input_shared_access_key_enabled"></a> [shared\_access\_key\_enabled](#input\_shared\_access\_key\_enabled) | Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key | `bool`| `true` | no |
| <a name="input_index_document"></a> [index\_document](#input\_index\_document) | The webpage that Azure Storage serves for requests to the root of a website or any subfolder | `string`| `null` | no |
| <a name="input_error_404_document"></a> [error\_404\_document](#input\_error\_404\_document) | The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file | `string`| `null` | no |
| <a name="input_share_allowed_headers"></a> [share\_allowed\_headers](#input\_share\_allowed\_headers) | A list of share headers that are allowed to be a part of the cross-origin request | `list`| `null` | yes |
| <a name="input_share_allowed_methods"></a> [share\_allowed\_methods](#input\_share\_allowed\_methods) | A A list of HTTP methods that are allowed to be executed by the origin | `list`| `null` | yes |
| <a name="input_share_allowed_origins"></a> [share\_allowed\_origins](#input\_share\_allowed\_origins) | A list of origin domains that will be allowed by CORS | `list`| `null` | yes |
| <a name="input_share_exposed_headers"></a> [share\_exposed\_headers](#input\_share\_exposed\_headers) | A list of response headers that are exposed to CORS clients | `list`| `null` | yes |
| <a name="input_share_max_age_in_seconds"></a> [share\_max\_age\_in\_seconds](#input\_share\_max\_age\_in\_seconds) | The number of seconds the client should cache a preflight response | `number`| `null` | yes |
| <a name="input_smb_versions"></a> [smb\_versions](#input\_smb\_versions) | A set of SMB protocol versions | `string`| `null` | no |
| <a name="input_authentication_types"></a> [authentication\_types](#input\_authentication\_types) | A set of SMB authentication methods | `string`| `null` | no |
| <a name="input_kerberos_encryption_type"></a> [kerberos\_encryption\_type](#input\_kerberos\_encryption\_type) | A set of Kerberos ticket encryption | `string`| `null` | no |
| <a name="input_channel_encryption_type"></a> [channel\_encryption_type](#input\_channel\_encryption_type) | A set of SMB channel encryption | `string`| `null` | no |
| <a name="input_multichannel_enabled"></a> [multichannel\_enabled](#input\_multichannel\_enabled) | enable or disable multichannel | `bool`| `false` | no |
| <a name="input_large_file_share_enabled"></a> [large\_file\_share\_enabled](#input\_large\_file\_share\_enabled) | enable or disable large File Share | `bool`| `null` | no |
| <a name="input_default_network_rule"></a> [default\_network\_rule](#input\_default\_network\_rule) | Specifies the default action of allow or deny when no other rules match | `string`| `null` | yes |
| <a name="input_traffic_bypass"></a> [traffic\_bypass](#input\_traffic\_bypass) | Specifies whether traffic is bypassed for Logging/Metrics/AzureServices | `string`| `null` | no |
| <a name="input_ip_rules"></a> [ip\_rules](#input\_ip\_rules) | List of public IP or IP ranges in CIDR Format | `string`| `null` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | A list of resource ids for subnets | `list`| `null` | no |
| <a name="input_endpoint_resource_id"></a> [endpoint\_resource\_id](#input\_endpoint\_resource\_id) | The ID of the Azure resource that should be allowed access to the target storage account | `string`| `null` | yes |
| <a name="input_endpoint_tenant_id"></a> [endpoint\_tenant\_id](#input\_endpoint\_tenant\_id) | The tenant id of the resource of the resource access rule to be granted access | `string`| `null` | no |
| <a name="input_local_user_enabled"></a> [local\_user\_enabled](#input\_local\_user\_enabled) | enable or disable local user | `bool`| `true` | no |
| <a name="input_directory_type"></a> [directory\_type](#input\_directory\_type) | Specifies the directory service used | `string`| `null` | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Specifies the primary domain that the AD DNS server is authoritative for | `string`| `null` | yes |
| <a name="input_domain_guid"></a> [domain\_guid](#input\_domain\_guid) | Specifies the domain GUID | `string`| `null` | yes |
| <a name="input_domain_sid"></a> [domain\_sid](#input\_domain\_sid) | Specifies the security identifier | `string`| `null` | no |
| <a name="input_storage_sid"></a> [storage\_sid](#input\_storage\_sid) | Specifies the security identifier (SID) for Azure Storage | `string`| `null` | no |
| <a name="input_forest_name"></a> [forest\_name](#input\_forest\_name) | Specifies the Active Directory forest | `string`| `null` | no |
| <a name="input_netbios_domain_name"></a> [netbios\_domain\_name](#input\_netbios\_domain\_name) | Specifies the NetBIOS domain name | `string`| `null` | no |
| <a name="input_publish_internet_endpoints"></a> [publish\_internet\_endpoints](#input\_publish\_internet\_endpoints) | publish or suppress internet routing storage endpoints | `bool`| `false` | no |
| <a name="input_publish_microsoft_endpoints"></a> [publish\_microsoft\_endpoints](#input\_publish\_microsoft\_endpoints) | publish or suppress Microsoft routing storage endpoints | `bool`| `false` | no |
| <a name="input_routing_choice"></a> [routing\_choice](#input\_routing\_choice) | Specifies the kind of network routing opted by the user | `string`| `MicrosoftRouting` | no |
| <a name="input_allow_protected_append_writes"></a> [allow\_protected\_append\_writes](#input\_allow\_protected\_append\_writes) | enable or disable writting new blocks to an append blob while maintaining immutability protection and compliance | `bool`| `null` | yes |
| <a name="input_immutability_state"></a> [immutability\_state](#input\_immutability\_state) | Defines the mode of the policy | `string`| `null` | yes |
| <a name="input_immutability_days"></a> [immutability\_days](#input\_immutability\_days) | The immutability period for the blobs in the container since the policy creation, in days | `number`| `null` | yes |
| <a name="input_sas_expiration_period"></a> [sas\_expiration\_period](#input\_sas\_expiration\_period) | The SAS expiration period in format of DD.HH:MM:SS | `number`| `null` | yes |
| <a name="input_sas_expiration_action"></a> [sas\_expiration\_action](#input\_sas\_expiration\_action) | The SAS expiration action | `string`| `Log` | no |
| <a name="input_allowed_copy_scope"></a> [allowed\_copy\_scope](#input\_allowed\_copy\_scope) | Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet | `string`| `null` | no |
| <a name="input_sftp_enabled"></a> [sftp\_enabled](#input\_sftp\_enabled) | enable or disable SFTP for the storage account | `bool`| `false` | no |
| <a name="input_dns_endpoint_type"></a> [dns\_endpoint\_type](#input\_dns\_endpoint\_type) | Specifies which DNS endpoint type to use | `string`| `Standard` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Storage Account |
| <a name="output_primary_blob_endpoint"></a> [primary\_blob\_endpoint](#output\_primary\_blob\_endpoint) | The endpoint URL for blob storage in the primary location |
| <a name="output_name"></a> [name](#output\_name) | The name of the Storage Account |
| <a name="output_primary_blob_host"></a> [primary\_blob\_host](#output\_primary\_blob\_host) | The hostname with port for blob storage in the primary location |
| <a name="output_secondary_blob_endpoint"></a> [secondary\_blob\_endpoint](#output\_secondary\_blob\_endpoint) | The endpoint URL for blob storage in the secondary location |
| <a name="output_secondary_blob_host"></a> [secondary\_blob\_host](#output\_secondary\_blob\_host) | The hostname with port for blob storage in the secondary location |
| <a name="output_primary_queue_endpoint"></a> [primary\_queue\_endpoint](#output\_primary\_queue\_endpoint) | The endpoint URL for queue storage in the primary location |
| <a name="output_secondary_queue_endpoint"></a> [secondary\_queue\_endpoint](#output\_secondary\_queue\_endpoint) | The endpoint URL for queue storage in the secondary location |
| <a name="output_primary_table_endpoint"></a> [primary\_table\_endpoint](#output\_primary\_table\_endpoint) | The endpoint URL for table storage in the primary location |
| <a name="output_secondary_table_endpoint"></a> [secondary\_table\_endpoint](#output\_secondary\_table\_endpoint) | The endpoint URL for table storage in the secondary location |
| <a name="output_primary_file_endpoint"></a> [primary\_file\_endpoint](#output\_primary\_file\_endpoint) | The endpoint URL for file storage in the primary location |
| <a name="output_secondary_file_endpoint"></a> [secondary\_file\_endpoint](#output\_secondary\_file\_endpoint) | The endpoint URL for file storage in the secondary location |
| <a name="output_primary_dfs_endpoint"></a> [primary\_dfs\_endpoint](#output\_primary\_dfs\_endpoint) | The endpoint URL for DFS storage in the primary location |
| <a name="output_secondary_dfs_endpoint"></a> [secondary\_dfs\_endpoint](#output\_secondary\_dfs\_endpoint) | The endpoint URL for DFS storage in the secondary location |
| <a name="output_primary_web_endpoint"></a> [primary\_web\_endpoint](#output\_primary\_web\_endpoint) | The endpoint URL for web storage in the primary location |
| <a name="output_primary_web_host"></a> [primary\_web\_host](#output\_primary\_web\_host) | Hostname with port for web storage in the primary location |
| <a name="output_secondary_web_endpoint"></a> [secondary\_web\_endpoint](#output\_secondary\_web\_endpoint) | The endpoint URL for web storage in the secondary location |
| <a name="output_secondary_web_host"></a> [secondary\_web\_host](#output\_secondary\_web\_host) | Hostname with port for web storage in the secondary location |
| <a name="output_primary_access_key"></a> [primary\_access\_key](#output\_primary\_access\_key) | The primary access key for the storage account |
| <a name="output_secondary_access_key"></a> [secondary\_access\_key](#output\_secondary\_access\_key) | The secondary access key for the storage account |
| <a name="output_primary_connection_string"></a> [primary\_connection\_string](#output\_primary\_connection\_string) | The connection string associated with the primary location |
| <a name="output_secondary_connection_string"></a> [secondary\_connection\_string](#output\_secondary\_connection\_string) | The connection string associated with the secondary location |
| <a name="output_primary_blob_connection_string"></a> [primary\_blob\_connection\_string](#output\_primary\_blob\_connection\_string) | The connection string associated with the primary blob location |
| <a name="output_secondary_blob_connection_string"></a> [secondary\_blob\_connection\_string](#output\_secondary\_blob\_connection\_string) | The connection string associated with the secondary blob location |
| <a name="output_principal_id"></a> [principal\_id](#output\_principal\_id) | The Principal ID for the Service Principal associated with the Identity of this Storage Account |
| <a name="output_tenant_id"></a> [tenant\_id](#output\_tenant\_id) | The Tenant ID for the Service Principal associated with the Identity of this Storage Account |