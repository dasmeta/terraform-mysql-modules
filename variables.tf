variable "databases" {
  type = map(object({
    db                    = string
    db_user               = string
    db_user_password      = string
    default_character_set = optional(string, "latin1")
    default_collation     = optional(string, "latin1_swedish_ci")
  }))
}

variable "admin_username" {
  type        = string
  description = "Admin username"
  default     = "admin"
}
