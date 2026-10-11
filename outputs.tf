output "route53_traffic_policy_document_lookup_id" {
  description = "Map of id values across all route53_traffic_policy_document_lookup, keyed the same as var.route53_traffic_policy_document_lookup"
  value       = { for k, v in data.aws_route53_traffic_policy_document.route53_traffic_policy_document_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_traffic_policy_document_lookup_endpoint" {
  description = "Map of endpoint values across all route53_traffic_policy_document_lookup, keyed the same as var.route53_traffic_policy_document_lookup"
  value       = { for k, v in data.aws_route53_traffic_policy_document.route53_traffic_policy_document_lookup : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "route53_traffic_policy_document_lookup_json" {
  description = "Map of json values across all route53_traffic_policy_document_lookup, keyed the same as var.route53_traffic_policy_document_lookup"
  value       = { for k, v in data.aws_route53_traffic_policy_document.route53_traffic_policy_document_lookup : k => v.json if v.json != null && length(v.json) > 0 }
}
output "route53_traffic_policy_document_lookup_record_type" {
  description = "Map of record_type values across all route53_traffic_policy_document_lookup, keyed the same as var.route53_traffic_policy_document_lookup"
  value       = { for k, v in data.aws_route53_traffic_policy_document.route53_traffic_policy_document_lookup : k => v.record_type if v.record_type != null && length(v.record_type) > 0 }
}
output "route53_traffic_policy_document_lookup_rule" {
  description = "Map of rule values across all route53_traffic_policy_document_lookup, keyed the same as var.route53_traffic_policy_document_lookup"
  value       = { for k, v in data.aws_route53_traffic_policy_document.route53_traffic_policy_document_lookup : k => v.rule if v.rule != null && length(v.rule) > 0 }
}
output "route53_traffic_policy_document_lookup_start_endpoint" {
  description = "Map of start_endpoint values across all route53_traffic_policy_document_lookup, keyed the same as var.route53_traffic_policy_document_lookup"
  value       = { for k, v in data.aws_route53_traffic_policy_document.route53_traffic_policy_document_lookup : k => v.start_endpoint if v.start_endpoint != null && length(v.start_endpoint) > 0 }
}
output "route53_traffic_policy_document_lookup_start_rule" {
  description = "Map of start_rule values across all route53_traffic_policy_document_lookup, keyed the same as var.route53_traffic_policy_document_lookup"
  value       = { for k, v in data.aws_route53_traffic_policy_document.route53_traffic_policy_document_lookup : k => v.start_rule if v.start_rule != null && length(v.start_rule) > 0 }
}
output "route53_traffic_policy_document_lookup_version" {
  description = "Map of version values across all route53_traffic_policy_document_lookup, keyed the same as var.route53_traffic_policy_document_lookup"
  value       = { for k, v in data.aws_route53_traffic_policy_document.route53_traffic_policy_document_lookup : k => v.version if v.version != null && length(v.version) > 0 }
}

