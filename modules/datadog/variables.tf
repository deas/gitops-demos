variable "datadog_api_url" {
  default = "https://api.datadoghq.eu"
  # "https://api.datadoghq.com/"
}

# variable "datadog_api_key" {
#   default = ""
# }
# 
# variable "datadog_app_key" {
#   default = ""
# }

variable "main_tags" {
  default = "owner:team_a"
}

variable "notifications" {
  type = map(any)
  default = {
    email = "@john@doe.com @john@smith.com"
    slack = "@slack-my_channel"
  }
}