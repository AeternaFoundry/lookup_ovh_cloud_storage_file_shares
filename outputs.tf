output "cloud_storage_file_shares_lookup_file_shares" {
  description = "Map of file_shares values across all cloud_storage_file_shares_lookup, keyed the same as var.cloud_storage_file_shares_lookup except keys with no file_shares are omitted"
  value       = { for k, v in data.ovh_cloud_storage_file_shares.cloud_storage_file_shares_lookup : k => v.file_shares if v.file_shares != null && length(v.file_shares) > 0 }
}
output "cloud_storage_file_shares_lookup_region" {
  description = "Map of region values across all cloud_storage_file_shares_lookup, keyed the same as var.cloud_storage_file_shares_lookup except keys with no region are omitted"
  value       = { for k, v in data.ovh_cloud_storage_file_shares.cloud_storage_file_shares_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloud_storage_file_shares_lookup_service_name" {
  description = "Map of service_name values across all cloud_storage_file_shares_lookup, keyed the same as var.cloud_storage_file_shares_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_storage_file_shares.cloud_storage_file_shares_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

