output "compliance_custom_frameworks_id" {
  description = "Map of id values across all compliance_custom_frameworks, keyed the same as var.compliance_custom_frameworks except keys with no id are omitted"
  value       = { for k, v in datadog_compliance_custom_framework.compliance_custom_frameworks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compliance_custom_frameworks_handle" {
  description = "Map of handle values across all compliance_custom_frameworks, keyed the same as var.compliance_custom_frameworks except keys with no handle are omitted"
  value       = { for k, v in datadog_compliance_custom_framework.compliance_custom_frameworks : k => v.handle if v.handle != null && length(v.handle) > 0 }
}
output "compliance_custom_frameworks_icon_url" {
  description = "Map of icon_url values across all compliance_custom_frameworks, keyed the same as var.compliance_custom_frameworks except keys with no icon_url are omitted"
  value       = { for k, v in datadog_compliance_custom_framework.compliance_custom_frameworks : k => v.icon_url if v.icon_url != null && length(v.icon_url) > 0 }
}
output "compliance_custom_frameworks_name" {
  description = "Map of name values across all compliance_custom_frameworks, keyed the same as var.compliance_custom_frameworks except keys with no name are omitted"
  value       = { for k, v in datadog_compliance_custom_framework.compliance_custom_frameworks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compliance_custom_frameworks_requirements" {
  description = "Map of requirements values across all compliance_custom_frameworks, keyed the same as var.compliance_custom_frameworks except keys with no requirements are omitted"
  value       = { for k, v in datadog_compliance_custom_framework.compliance_custom_frameworks : k => v.requirements if v.requirements != null && length(v.requirements) > 0 }
}
output "compliance_custom_frameworks_version" {
  description = "Map of version values across all compliance_custom_frameworks, keyed the same as var.compliance_custom_frameworks except keys with no version are omitted"
  value       = { for k, v in datadog_compliance_custom_framework.compliance_custom_frameworks : k => v.version if v.version != null && length(v.version) > 0 }
}

