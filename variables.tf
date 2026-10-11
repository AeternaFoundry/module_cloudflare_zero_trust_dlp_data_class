variable "zero_trust_dlp_data_classes" {
  description = <<EOT
Map of zero_trust_dlp_data_classes, attributes below
Required:
    - account_id
    - data_tags
    - expression
    - name
    - sensitivity_levels
Optional:
    - description
EOT

  type = map(object({
    account_id = string
    data_tags  = list(string)
    expression = string
    name       = string
    sensitivity_levels = list(object({
      group_id = string
      level_id = string
    }))
    description = optional(string)
  }))
}

