resource "datadog_compliance_custom_framework" "compliance_custom_frameworks" {
  for_each = var.compliance_custom_frameworks

  handle   = each.value.handle
  name     = each.value.name
  version  = each.value.version
  icon_url = each.value.icon_url

  dynamic "requirements" {
    for_each = each.value.requirements != null ? each.value.requirements : []
    content {
      dynamic "controls" {
        for_each = requirements.value.controls != null ? requirements.value.controls : []
        content {
          name     = controls.value.name
          rules_id = controls.value.rules_id
        }
      }
      name = requirements.value.name
    }
  }
}

