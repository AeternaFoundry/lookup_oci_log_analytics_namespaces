output "log_analytics_namespaces_lookup_id" {
  description = "Map of id values across all log_analytics_namespaces_lookup, keyed the same as var.log_analytics_namespaces_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_log_analytics_namespaces.log_analytics_namespaces_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "log_analytics_namespaces_lookup_compartment_id" {
  description = "Map of compartment_id values across all log_analytics_namespaces_lookup, keyed the same as var.log_analytics_namespaces_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_log_analytics_namespaces.log_analytics_namespaces_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "log_analytics_namespaces_lookup_filter" {
  description = "Map of filter values across all log_analytics_namespaces_lookup, keyed the same as var.log_analytics_namespaces_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_log_analytics_namespaces.log_analytics_namespaces_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "log_analytics_namespaces_lookup_is_compartment_delete" {
  description = "Map of is_compartment_delete values across all log_analytics_namespaces_lookup, keyed the same as var.log_analytics_namespaces_lookup except keys with no is_compartment_delete are omitted"
  value       = { for k, v in data.oci_log_analytics_namespaces.log_analytics_namespaces_lookup : k => v.is_compartment_delete if v.is_compartment_delete != null }
}
output "log_analytics_namespaces_lookup_namespace_collection" {
  description = "Map of namespace_collection values across all log_analytics_namespaces_lookup, keyed the same as var.log_analytics_namespaces_lookup except keys with no namespace_collection are omitted"
  value       = { for k, v in data.oci_log_analytics_namespaces.log_analytics_namespaces_lookup : k => v.namespace_collection if v.namespace_collection != null && length(v.namespace_collection) > 0 }
}

