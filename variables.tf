variable "host" {
  description = "describes bastion related configuration"
  type        = any
}

variable "naming" {
  description = "contains naming convention"
  type        = map(string)
}
