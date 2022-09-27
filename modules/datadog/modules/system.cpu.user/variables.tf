variable "env" {
  description = "Environment"
  default     = "production"
}

variable "selected_tags" {
  description = "Selected tags"
  default     = ""
}

variable "thresholds" {
  type = map(any)
  default = {
    "alert" = 10
    "warn"  = 5
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