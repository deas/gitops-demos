variable "env" {
  description = "Environment"
  default     = "production"
}

variable "selected_tags" {
  description = "Selected tags"
  default     = ""
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