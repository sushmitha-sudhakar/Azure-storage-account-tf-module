output "storage_account_id" {
  description = " The ID of the Storage Account"
  value = azurerm_storage_account.sa.id
}

output "primary_blob_endpoint" {
  description = "The endpoint URL for blob storage in the primary location"
  value = azurerm_storage_account.sa.primary_blob_endpoint
}

output "name" {
  description = "The name of the Storage Account"
  value       = azurerm_storage_account.sa.name

}

output "primary_blob_host" {
  description = "The hostname with port for blob storage in the primary location"
  value = azurerm_storage_account.sa.primary_blob_host

}

output "secondary_blob_endpoint" {
  description = "The endpoint URL for blob storage in the secondary location"
  value = azurerm_storage_account.sa.secondary_blob_endpoint

}

output "secondary_blob_host" {
  description = "The hostname with port for blob storage in the secondary location"
  value = azurerm_storage_account.sa.secondary_blob_host

}

output "primary_queue_endpoint" {
  description = "The endpoint URL for queue storage in the primary location"
  value = azurerm_storage_account.sa.primary_queue_endpoint

}

output "secondary_queue_endpoint" {
  description = "The endpoint URL for queue storage in the secondary location"
  value = azurerm_storage_account.sa.secondary_queue_endpoint

}

output "primary_table_endpoint" {
  description = "The endpoint URL for table storage in the primary location"
  value = azurerm_storage_account.sa.primary_table_endpoint

}

output "secondary_table_endpoint" {
  description = "The endpoint URL for table storage in the secondary location"
  value = azurerm_storage_account.sa.secondary_table_endpoint

}

output "primary_file_endpoint" {
  description = "The endpoint URL for file storage in the primary location"
  value = azurerm_storage_account.sa.primary_file_endpoint

}

output "secondary_file_endpoint" {
  description = "The endpoint URL for file storage in the secondary location"
  value = azurerm_storage_account.sa.secondary_file_endpoint

}

output "primary_dfs_endpoint" {
  description = "The endpoint URL for DFS storage in the primary location"
  value = azurerm_storage_account.sa.primary_dfs_endpoint

}

output "secondary_dfs_endpoint" {
  description = "The endpoint URL for DFS storage in the secondary location"
  value = azurerm_storage_account.sa.secondary_dfs_endpoint

}

output "primary_web_endpoint" {
  description = "The endpoint URL for web storage in the primary location"
  value = azurerm_storage_account.sa.primary_web_endpoint

}

output "primary_web_host" {
  description = "Hostname with port for web storage in the primary location"
  value = azurerm_storage_account.sa.primary_web_host

}

output "secondary_web_endpoint" {
  description = "The endpoint URL for web storage in the secondary location"
  value = azurerm_storage_account.sa.secondary_web_endpoint

}

output "secondary_web_host" {
  description = "Hostname with port for web storage in the secondary location"
  value = azurerm_storage_account.sa.secondary_web_host

}

output "primary_access_key" {
  description = "The primary access key for the storage account"
  value     = azurerm_storage_account.sa.primary_access_key
  sensitive = true

}

output "secondary_access_key" {
  description = "The secondary access key for the storage account"
  value     = azurerm_storage_account.sa.secondary_access_key
  sensitive = true
}

output "primary_connection_string" {
  description = "The connection string associated with the primary location"
  value     = azurerm_storage_account.sa.primary_connection_string
  sensitive = true
}

output "secondary_connection_string" {
  description = "The connection string associated with the secondary location"
  value     = azurerm_storage_account.sa.secondary_connection_string
  sensitive = true
}

output "primary_blob_connection_string" {
  description = "The connection string associated with the primary blob location"
  value     = azurerm_storage_account.sa.primary_blob_connection_string
  sensitive = true
}

output "secondary_blob_connection_string" {
  description = "The connection string associated with the secondary blob location"
  value     = azurerm_storage_account.sa.secondary_blob_connection_string
  sensitive = true
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Identity of this Storage Account"
  value = azurerm_storage_account.sa.identity.0.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Identity of this Storage Account"
  value = azurerm_storage_account.sa.identity.0.tenant_id

}