variable "compliance_custom_frameworks" {
  description = <<EOT
Map of compliance_custom_frameworks, attributes below
Required:
    - handle
    - name
    - version
Optional:
    - icon_url
    - requirements (block):
        - controls (optional, block):
            - name (required)
            - rules_id (required)
        - name (required)
EOT

  type = map(object({
    handle   = string
    name     = string
    version  = string
    icon_url = optional(string)
    requirements = optional(list(object({
      controls = optional(list(object({
        name     = string
        rules_id = set(string)
      })))
      name = string
    })))
  }))
}

