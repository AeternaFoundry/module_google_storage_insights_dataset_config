resource "google_storage_insights_dataset_config" "storage_insights_dataset_configs" {
  for_each = var.storage_insights_dataset_configs

  dataset_config_id                   = each.value.dataset_config_id
  location                            = each.value.location
  retention_period_days               = each.value.retention_period_days
  activity_data_retention_period_days = each.value.activity_data_retention_period_days
  deletion_policy                     = each.value.deletion_policy
  description                         = each.value.description
  include_newly_created_buckets       = each.value.include_newly_created_buckets
  link_dataset                        = each.value.link_dataset
  organization_number                 = each.value.organization_number
  organization_scope                  = each.value.organization_scope
  project                             = each.value.project

  identity {
    type = each.value.identity.type
  }

  dynamic "exclude_cloud_storage_buckets" {
    for_each = each.value.exclude_cloud_storage_buckets != null ? [each.value.exclude_cloud_storage_buckets] : []
    content {
      dynamic "cloud_storage_buckets" {
        for_each = exclude_cloud_storage_buckets.value.cloud_storage_buckets
        content {
          bucket_name         = cloud_storage_buckets.value.bucket_name
          bucket_prefix_regex = cloud_storage_buckets.value.bucket_prefix_regex
        }
      }
    }
  }

  dynamic "exclude_cloud_storage_locations" {
    for_each = each.value.exclude_cloud_storage_locations != null ? [each.value.exclude_cloud_storage_locations] : []
    content {
      locations = exclude_cloud_storage_locations.value.locations
    }
  }

  dynamic "include_cloud_storage_buckets" {
    for_each = each.value.include_cloud_storage_buckets != null ? [each.value.include_cloud_storage_buckets] : []
    content {
      dynamic "cloud_storage_buckets" {
        for_each = include_cloud_storage_buckets.value.cloud_storage_buckets
        content {
          bucket_name         = cloud_storage_buckets.value.bucket_name
          bucket_prefix_regex = cloud_storage_buckets.value.bucket_prefix_regex
        }
      }
    }
  }

  dynamic "include_cloud_storage_locations" {
    for_each = each.value.include_cloud_storage_locations != null ? [each.value.include_cloud_storage_locations] : []
    content {
      locations = include_cloud_storage_locations.value.locations
    }
  }

  dynamic "source_folders" {
    for_each = each.value.source_folders != null ? [each.value.source_folders] : []
    content {
      folder_numbers = source_folders.value.folder_numbers
    }
  }

  dynamic "source_projects" {
    for_each = each.value.source_projects != null ? [each.value.source_projects] : []
    content {
      project_numbers = source_projects.value.project_numbers
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

