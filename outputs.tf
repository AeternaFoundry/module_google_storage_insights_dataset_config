output "storage_insights_dataset_configs_id" {
  description = "Map of id values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no id are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_insights_dataset_configs_activity_data_retention_period_days" {
  description = "Map of activity_data_retention_period_days values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no activity_data_retention_period_days are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.activity_data_retention_period_days if v.activity_data_retention_period_days != null }
}
output "storage_insights_dataset_configs_create_time" {
  description = "Map of create_time values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no create_time are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "storage_insights_dataset_configs_dataset_config_id" {
  description = "Map of dataset_config_id values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no dataset_config_id are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.dataset_config_id if v.dataset_config_id != null && length(v.dataset_config_id) > 0 }
}
output "storage_insights_dataset_configs_dataset_config_state" {
  description = "Map of dataset_config_state values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no dataset_config_state are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.dataset_config_state if v.dataset_config_state != null && length(v.dataset_config_state) > 0 }
}
output "storage_insights_dataset_configs_deletion_policy" {
  description = "Map of deletion_policy values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "storage_insights_dataset_configs_description" {
  description = "Map of description values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no description are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "storage_insights_dataset_configs_exclude_cloud_storage_buckets" {
  description = "Map of exclude_cloud_storage_buckets values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no exclude_cloud_storage_buckets are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => one(v.exclude_cloud_storage_buckets) if v.exclude_cloud_storage_buckets != null && length(v.exclude_cloud_storage_buckets) > 0 }
}
output "storage_insights_dataset_configs_exclude_cloud_storage_locations" {
  description = "Map of exclude_cloud_storage_locations values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no exclude_cloud_storage_locations are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => one(v.exclude_cloud_storage_locations) if v.exclude_cloud_storage_locations != null && length(v.exclude_cloud_storage_locations) > 0 }
}
output "storage_insights_dataset_configs_identity" {
  description = "Map of identity values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no identity are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => one(v.identity) if v.identity != null && length(v.identity) > 0 }
}
output "storage_insights_dataset_configs_include_cloud_storage_buckets" {
  description = "Map of include_cloud_storage_buckets values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no include_cloud_storage_buckets are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => one(v.include_cloud_storage_buckets) if v.include_cloud_storage_buckets != null && length(v.include_cloud_storage_buckets) > 0 }
}
output "storage_insights_dataset_configs_include_cloud_storage_locations" {
  description = "Map of include_cloud_storage_locations values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no include_cloud_storage_locations are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => one(v.include_cloud_storage_locations) if v.include_cloud_storage_locations != null && length(v.include_cloud_storage_locations) > 0 }
}
output "storage_insights_dataset_configs_include_newly_created_buckets" {
  description = "Map of include_newly_created_buckets values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no include_newly_created_buckets are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.include_newly_created_buckets if v.include_newly_created_buckets != null }
}
output "storage_insights_dataset_configs_link" {
  description = "Map of link values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no link are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.link if v.link != null && length(v.link) > 0 }
}
output "storage_insights_dataset_configs_link_dataset" {
  description = "Map of link_dataset values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no link_dataset are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.link_dataset if v.link_dataset != null }
}
output "storage_insights_dataset_configs_location" {
  description = "Map of location values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no location are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "storage_insights_dataset_configs_name" {
  description = "Map of name values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no name are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_insights_dataset_configs_organization_number" {
  description = "Map of organization_number values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no organization_number are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.organization_number if v.organization_number != null && length(v.organization_number) > 0 }
}
output "storage_insights_dataset_configs_organization_scope" {
  description = "Map of organization_scope values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no organization_scope are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.organization_scope if v.organization_scope != null }
}
output "storage_insights_dataset_configs_project" {
  description = "Map of project values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no project are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "storage_insights_dataset_configs_retention_period_days" {
  description = "Map of retention_period_days values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no retention_period_days are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.retention_period_days if v.retention_period_days != null }
}
output "storage_insights_dataset_configs_source_folders" {
  description = "Map of source_folders values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no source_folders are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => one(v.source_folders) if v.source_folders != null && length(v.source_folders) > 0 }
}
output "storage_insights_dataset_configs_source_projects" {
  description = "Map of source_projects values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no source_projects are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => one(v.source_projects) if v.source_projects != null && length(v.source_projects) > 0 }
}
output "storage_insights_dataset_configs_uid" {
  description = "Map of uid values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no uid are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "storage_insights_dataset_configs_update_time" {
  description = "Map of update_time values across all storage_insights_dataset_configs, keyed the same as var.storage_insights_dataset_configs except keys with no update_time are omitted"
  value       = { for k, v in google_storage_insights_dataset_config.storage_insights_dataset_configs : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

