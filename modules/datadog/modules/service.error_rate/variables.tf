variable "datadog_api_url" {
  default = "https://api.datadoghq.com/"
}

variable "datadog_api_key" {
  default = ""
}

variable "datadog_app_key" {
  default = ""
}

variable "env" {
  description = "Environment"
  default     = "prod"
}

variable "selected_tags" {
  description = "Selected tags"
  default     = ""
}

variable "metrics" {
  type = map(any)
  default = {
    "hits"   = "trace.express.request.hits"
    "errors" = "trace.express.request.errors"
  }
}

variable "thresholds" {
  type = map(any)
  default = {
    "alert" = 15
    "warn"  = 10
  }
}

variable "notifications" {
  type = map(any)
  default = {
    alert    = ""
    warn     = ""
    recovery = ""
    default  = ""
  }
}
