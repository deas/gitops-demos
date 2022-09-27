variable "datadog_api_url" {
  default = "https://api.datadoghq.eu"
  # "https://api.datadoghq.com/"
}

variable "main_tags" {
  default = "env:testing"
}

variable "notifications" {
  type = map(any)
  default = {
    email = "@john@doe.com @john@smith.com"
    slack = "@slack-my_channel"
  }
}