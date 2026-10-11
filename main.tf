data "aws_route53_traffic_policy_document" "route53_traffic_policy_document_lookup" {
  for_each = var.route53_traffic_policy_document_lookup

  record_type    = each.value.record_type
  start_endpoint = each.value.start_endpoint
  start_rule     = each.value.start_rule
  version        = each.value.version

  dynamic "endpoint" {
    for_each = each.value.endpoint != null ? each.value.endpoint : []
    content {
      id     = endpoint.value.id
      region = endpoint.value.region
      type   = endpoint.value.type
      value  = endpoint.value.value
    }
  }

  dynamic "rule" {
    for_each = each.value.rule != null ? each.value.rule : []
    content {
      dynamic "geo_proximity_location" {
        for_each = rule.value.geo_proximity_location != null ? rule.value.geo_proximity_location : []
        content {
          bias                   = geo_proximity_location.value.bias
          endpoint_reference     = geo_proximity_location.value.endpoint_reference
          evaluate_target_health = geo_proximity_location.value.evaluate_target_health
          health_check           = geo_proximity_location.value.health_check
          latitude               = geo_proximity_location.value.latitude
          longitude              = geo_proximity_location.value.longitude
          region                 = geo_proximity_location.value.region
          rule_reference         = geo_proximity_location.value.rule_reference
        }
      }
      id = rule.value.id
      dynamic "items" {
        for_each = rule.value.items != null ? rule.value.items : []
        content {
          endpoint_reference = items.value.endpoint_reference
          health_check       = items.value.health_check
        }
      }
      dynamic "location" {
        for_each = rule.value.location != null ? rule.value.location : []
        content {
          continent              = location.value.continent
          country                = location.value.country
          endpoint_reference     = location.value.endpoint_reference
          evaluate_target_health = location.value.evaluate_target_health
          health_check           = location.value.health_check
          is_default             = location.value.is_default
          rule_reference         = location.value.rule_reference
          subdivision            = location.value.subdivision
        }
      }
      dynamic "primary" {
        for_each = rule.value.primary != null ? [rule.value.primary] : []
        content {
          endpoint_reference     = primary.value.endpoint_reference
          evaluate_target_health = primary.value.evaluate_target_health
          health_check           = primary.value.health_check
          rule_reference         = primary.value.rule_reference
        }
      }
      dynamic "region" {
        for_each = rule.value.region != null ? rule.value.region : []
        content {
          endpoint_reference     = region.value.endpoint_reference
          evaluate_target_health = region.value.evaluate_target_health
          health_check           = region.value.health_check
          region                 = region.value.region
          rule_reference         = region.value.rule_reference
        }
      }
      dynamic "secondary" {
        for_each = rule.value.secondary != null ? [rule.value.secondary] : []
        content {
          endpoint_reference     = secondary.value.endpoint_reference
          evaluate_target_health = secondary.value.evaluate_target_health
          health_check           = secondary.value.health_check
          rule_reference         = secondary.value.rule_reference
        }
      }
      type = rule.value.type
    }
  }
}

