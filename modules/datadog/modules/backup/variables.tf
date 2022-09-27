variable "env" {
  description = "Environment"
  default     = "production"
}

variable "service_name" {
  description = "Service name"
  default     = ""
}

variable "notifications" {
  type = map(any)
  default = {
    alert    = ""
    warn     = ""
    recovery = ""
    default  = ""
    no_data  = ""
  }
}