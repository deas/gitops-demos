variable "datadog_api_url" {
  default = "https://api.datadoghq.eu"
  # "https://api.datadoghq.com/"
}

variable "env" {
  type    = string
  default = "todo"
}

variable "main_tags" {
  type    = string
  default = "env:todo"
}

variable "notifications" {
  type = map(any)
  default = {
    email = "@john@doe.com @john@smith.com"
    slack = "@slack-my_channel"
  }
}