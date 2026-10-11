resource "cloudflare_zero_trust_dlp_data_class" "zero_trust_dlp_data_classes" {
  for_each = var.zero_trust_dlp_data_classes

  account_id         = each.value.account_id
  data_tags          = each.value.data_tags
  expression         = each.value.expression
  name               = each.value.name
  sensitivity_levels = each.value.sensitivity_levels
  description        = each.value.description
}

