variable "host" {
  description = "describes bastion host configuration"
  type = object({
    name                      = string
    resource_group_name       = optional(string)
    location                  = optional(string)
    sku                       = optional(string, "Standard")
    scale_units               = optional(number, 2)
    copy_paste_enabled        = optional(bool)
    file_copy_enabled         = optional(bool)
    tunneling_enabled         = optional(bool)
    ip_connect_enabled        = optional(bool)
    shareable_link_enabled    = optional(bool)
    kerberos_enabled          = optional(bool)
    session_recording_enabled = optional(bool)
    zones                     = optional(list(string))
    virtual_network_id        = optional(string)
    ip_configuration = object({
      name                 = optional(string, "configuration")
      subnet_id            = string
      public_ip_address_id = optional(string)
    })
    tags = optional(map(string))
  })

  validation {
    condition     = lookup(var.host, "location", null) != null || var.location != null
    error_message = "location must be set on var.host.location or on the module-level var.location."
  }

  validation {
    condition     = lookup(var.host, "resource_group_name", null) != null || var.resource_group_name != null
    error_message = "resource_group_name must be set on var.host.resource_group_name or on the module-level var.resource_group_name."
  }
}

variable "location" {
  description = "default azure region to be used."
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "default resource group to be used."
  type        = string
  default     = null
}

variable "tags" {
  description = "tags to be added to the resources"
  type        = map(string)
  default     = {}
}
