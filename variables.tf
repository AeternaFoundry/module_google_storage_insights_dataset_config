variable "storage_insights_dataset_configs" {
  description = <<EOT
Map of storage_insights_dataset_configs, attributes below
Required:
    - dataset_config_id
    - location
    - retention_period_days
    - identity (block):
        - type (required)
Optional:
    - activity_data_retention_period_days
    - deletion_policy
    - description
    - include_newly_created_buckets
    - link_dataset
    - organization_number
    - organization_scope
    - project
    - exclude_cloud_storage_buckets (block):
        - cloud_storage_buckets (required, block):
            - bucket_name (optional)
            - bucket_prefix_regex (optional)
    - exclude_cloud_storage_locations (block):
        - locations (required)
    - include_cloud_storage_buckets (block):
        - cloud_storage_buckets (required, block):
            - bucket_name (optional)
            - bucket_prefix_regex (optional)
    - include_cloud_storage_locations (block):
        - locations (required)
    - source_folders (block):
        - folder_numbers (optional)
    - source_projects (block):
        - project_numbers (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    dataset_config_id                   = string
    location                            = string
    retention_period_days               = number
    activity_data_retention_period_days = optional(number)
    deletion_policy                     = optional(string)
    description                         = optional(string)
    include_newly_created_buckets       = optional(bool)
    link_dataset                        = optional(bool)
    organization_number                 = optional(string)
    organization_scope                  = optional(bool)
    project                             = optional(string)
    identity = object({
      type = string
    })
    exclude_cloud_storage_buckets = optional(object({
      cloud_storage_buckets = list(object({
        bucket_name         = optional(string)
        bucket_prefix_regex = optional(string)
      }))
    }))
    exclude_cloud_storage_locations = optional(object({
      locations = list(string)
    }))
    include_cloud_storage_buckets = optional(object({
      cloud_storage_buckets = list(object({
        bucket_name         = optional(string)
        bucket_prefix_regex = optional(string)
      }))
    }))
    include_cloud_storage_locations = optional(object({
      locations = list(string)
    }))
    source_folders = optional(object({
      folder_numbers = optional(list(string))
    }))
    source_projects = optional(object({
      project_numbers = optional(list(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_insights_dataset_configs : (
        v.exclude_cloud_storage_buckets == null || (length(v.exclude_cloud_storage_buckets.cloud_storage_buckets) >= 1)
      )
    ])
    error_message = "Each cloud_storage_buckets list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_insights_dataset_configs : (
        v.include_cloud_storage_buckets == null || (length(v.include_cloud_storage_buckets.cloud_storage_buckets) >= 1)
      )
    ])
    error_message = "Each cloud_storage_buckets list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

