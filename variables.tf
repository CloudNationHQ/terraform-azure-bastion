variable "host" {
  description = "Contains all configurations for bastion hosts"
  type = object({
    name                      = string
    resource_group_name       = optional(string, null)
    location                  = optional(string, null)
    sku                       = optional(string, "Standard")
    scale_units               = optional(number, 2)
    copy_paste_enabled        = optional(bool, false)
    file_copy_enabled         = optional(bool, false)
    tunneling_enabled         = optional(bool, false)
    ip_connect_enabled        = optional(bool, false)
    shareable_link_enabled    = optional(bool, false)
    kerberos_enabled          = optional(bool, false)
    session_recording_enabled = optional(bool, false)
    zones                     = optional(list(string), [])
    virtual_network_id        = optional(string, null)
    ip_configuration = object({
      name                 = optional(string, "configuration")
      subnet_id            = string
      public_ip_address_id = string
    })
    tags = optional(map(string))
  })
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
