variable "log_analytics_namespaces_lookup" {
  description = <<EOT
Map of log_analytics_namespaces_lookup, attributes below
Required:
    - compartment_id
Optional:
    - is_compartment_delete
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id        = string
    is_compartment_delete = optional(bool)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

