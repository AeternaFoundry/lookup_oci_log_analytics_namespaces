data "oci_log_analytics_namespaces" "log_analytics_namespaces_lookup" {
  for_each = var.log_analytics_namespaces_lookup

  compartment_id        = each.value.compartment_id
  is_compartment_delete = each.value.is_compartment_delete

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

