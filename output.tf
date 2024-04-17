output "storage_account_id" {
  value = azurerm_storage_account.sa.id
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.sa.primary_blob_endpoint
}

output "primary_blob_host" {
  value = azurerm_storage_account.sa.primary_blob_host
}

output "secondary_blob_endpoint" {
  value = azurerm_storage_account.sa.secondary_blob_endpoint
}

output "secondary_blob_host" {
  value = azurerm_storage_account.sa.secondary_blob_host
}

output "primary_queue_endpoint" {
  value = azurerm_storage_account.sa.primary_queue_endpoint
}

output "secondary_queue_endpoint" {
  value = azurerm_storage_account.sa.secondary_queue_endpoint
}

output "primary_table_endpoint" {
  value = azurerm_storage_account.sa.primary_table_endpoint
}

output "secondary_table_endpoint" {
  value = azurerm_storage_account.sa.secondary_table_endpoint
}

output "primary_file_endpoint" {
  value = azurerm_storage_account.sa.primary_file_endpoint
}

output "secondary_file_endpoint" {
  value = azurerm_storage_account.sa.secondary_file_endpoint
}

output "primary_dfs_endpoint" {
  value = azurerm_storage_account.sa.primary_dfs_endpoint
}

output "secondary_dfs_endpoint" {
  value = azurerm_storage_account.sa.secondary_dfs_endpoint
}

output "primary_web_endpoint" {
  value = azurerm_storage_account.sa.primary_web_endpoint
}

output "primary_web_host" {
  value = azurerm_storage_account.sa.primary_web_host
}

output "secondary_web_endpoint" {
  value = azurerm_storage_account.sa.secondary_web_endpoint
}

output "secondary_web_host" {
  value = azurerm_storage_account.sa.secondary_web_host
}

output "primary_access_key" {
  value     = azurerm_storage_account.sa.primary_access_key
  sensitive = true
}

output "secondary_access_key" {
  value     = azurerm_storage_account.sa.secondary_access_key
  sensitive = true
}

output "primary_connection_string" {
  value     = azurerm_storage_account.sa.primary_connection_string
  sensitive = true
}

output "secondary_connection_string" {
  value     = azurerm_storage_account.sa.secondary_connection_string
  sensitive = true
}

output "primary_blob_connection_string" {
  value     = azurerm_storage_account.sa.primary_blob_connection_string
  sensitive = true
}

output "secondary_blob_connection_string" {
  value     = azurerm_storage_account.sa.secondary_blob_connection_string
  sensitive = true
}

output "principal_id" {
  value = azurerm_storage_account.sa.identity.0.principal_id
}

output "tenant_id" {
  value = azurerm_storage_account.sa.identity.0.tenant_id

}