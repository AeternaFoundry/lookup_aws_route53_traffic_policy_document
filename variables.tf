variable "route53_traffic_policy_document_lookup" {
  description = <<EOT
Map of route53_traffic_policy_document_lookup, attributes below
Optional:
    - record_type
    - start_endpoint
    - start_rule
    - version
    - endpoint (block):
        - id (required)
        - region (optional)
        - type (optional)
        - value (optional)
    - rule (block):
        - geo_proximity_location (optional, block):
            - bias (optional)
            - endpoint_reference (optional)
            - evaluate_target_health (optional)
            - health_check (optional)
            - latitude (optional)
            - longitude (optional)
            - region (optional)
            - rule_reference (optional)
        - id (required)
        - items (optional, block):
            - endpoint_reference (optional)
            - health_check (optional)
        - location (optional, block):
            - continent (optional)
            - country (optional)
            - endpoint_reference (optional)
            - evaluate_target_health (optional)
            - health_check (optional)
            - is_default (optional)
            - rule_reference (optional)
            - subdivision (optional)
        - primary (optional, block):
            - endpoint_reference (optional)
            - evaluate_target_health (optional)
            - health_check (optional)
            - rule_reference (optional)
        - region (optional, block):
            - endpoint_reference (optional)
            - evaluate_target_health (optional)
            - health_check (optional)
            - region (optional)
            - rule_reference (optional)
        - secondary (optional, block):
            - endpoint_reference (optional)
            - evaluate_target_health (optional)
            - health_check (optional)
            - rule_reference (optional)
        - type (optional)
EOT

  type = map(object({
    record_type    = optional(string)
    start_endpoint = optional(string)
    start_rule     = optional(string)
    version        = optional(string)
    endpoint = optional(list(object({
      id     = string
      region = optional(string)
      type   = optional(string)
      value  = optional(string)
    })))
    rule = optional(list(object({
      geo_proximity_location = optional(list(object({
        bias                   = optional(string)
        endpoint_reference     = optional(string)
        evaluate_target_health = optional(bool)
        health_check           = optional(string)
        latitude               = optional(string)
        longitude              = optional(string)
        region                 = optional(string)
        rule_reference         = optional(string)
      })))
      id = string
      items = optional(list(object({
        endpoint_reference = optional(string)
        health_check       = optional(string)
      })))
      location = optional(list(object({
        continent              = optional(string)
        country                = optional(string)
        endpoint_reference     = optional(string)
        evaluate_target_health = optional(bool)
        health_check           = optional(string)
        is_default             = optional(bool)
        rule_reference         = optional(string)
        subdivision            = optional(string)
      })))
      primary = optional(object({
        endpoint_reference     = optional(string)
        evaluate_target_health = optional(bool)
        health_check           = optional(string)
        rule_reference         = optional(string)
      }))
      region = optional(list(object({
        endpoint_reference     = optional(string)
        evaluate_target_health = optional(bool)
        health_check           = optional(string)
        region                 = optional(string)
        rule_reference         = optional(string)
      })))
      secondary = optional(object({
        endpoint_reference     = optional(string)
        evaluate_target_health = optional(bool)
        health_check           = optional(string)
        rule_reference         = optional(string)
      }))
      type = optional(string)
    })))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

