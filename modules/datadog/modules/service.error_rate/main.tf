# Providers
terraform {
  required_providers {
    datadog = {
      source = "DataDog/datadog"
    }
  }
}

# Configure the Datadog provider
# provider "datadog" {
# }

/*
resource "datadog_monitor" "service_error_rate" {
  type    = "metric alert"
  name    = "[Service] Error rate high on {{service.name}}"
  query   = <<EOF
sum(last_1h):100 * sum:${var.metrics.errors}{env:${var.env},${var.selected_tags}!exception_service_error_rate:true} by {env,team,service}.as_rate() / sum:${var.metrics.hits}{env:${var.env},${var.selected_tags}!exception_service_error_rate:true} by {env,team,service}.as_rate() > ${var.thresholds.alert}
EOF
  message = <<EOF
{{#is_alert}}
Service {{service.name}} error rate is too high

Instructions:

- Check stuffs

${var.notifications.alert}
{{/is_alert}} 

{{#is_no_data}}
Service {{service.name}}  is no longer monitored.

${var.notifications.no_data}
{{/is_no_data}} 

Alert details: 

- env: {{env.name}}
- team: {{team.name}}
- service: {{service.name}}
- thresholds: {{threshold}} 
- value: {{value}} 
- last_triggered_at: {{last_triggered_at}}
EOF
  monitor_thresholds {
    critical = var.thresholds.alert
    warning  = var.thresholds.warn
  }
  evaluation_delay  = 60
  notify_no_data    = true
  no_data_timeframe = 120
  include_tags      = true
  tags              = ["standard:true", "terraform:true", "env:${var.env}", "service:all"]
}
*/