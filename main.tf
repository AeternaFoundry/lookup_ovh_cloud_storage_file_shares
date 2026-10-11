data "ovh_cloud_storage_file_shares" "cloud_storage_file_shares_lookup" {
  for_each = var.cloud_storage_file_shares_lookup

  service_name = each.value.service_name
  region       = each.value.region
}

