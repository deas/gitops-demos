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
    "alert" = 3
    "warn"  = 7
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
