# Providers
terraform {
  required_providers {
    datadog = {
      source = "DataDog/datadog"
    }
  }
}

# Datadog
# provider "datadog" {
#   version = "2.8.0"
#   api_url = var.datadog_api_url
#   api_key = var.datadog_api_key
#   app_key = var.datadog_app_key
# }

module "backup" {
  source       = "./modules/backup"
  service_name = "my_app_with_critical_data"
  notifications = {
    alert   = "${var.notifications.email} ${var.notifications.slack}"
    no_data = "${var.notifications.slack}"
  }
}

module "services_error_rate" {
  source = "./modules/service.error_rate"
  # env = "prod"
  selected_tags = var.main_tags
  metrics = {
    "hits"   = "trace.express.request.hits"
    "errors" = "trace.express.request.errors"
  }
  notifications = {
    alert   = "${var.notifications.email} ${var.notifications.slack}"
    no_data = "${var.notifications.slack}"
  }
}

module "systems" {
  source        = "./modules/system"
  selected_tags = var.main_tags
  notifications = {
    email = "@john@doe.com @john@smith.com"
    slack = "@slack-my_channel"
  }
}
