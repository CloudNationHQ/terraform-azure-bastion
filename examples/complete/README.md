# Complete

This example highlights the complete usage.

## Types

```hcl
host = object({
  name                    = string
  location                = string
  resource_group          = string
  copy_paste_enabled      = optional(bool, false)
  file_copy_enabled       = optional(bool, false)
  tunneling_enabled       = optional(bool, false)
  ip_connect_enabled      = optional(bool, false)
  shareable_link_enabled  = optional(bool, false)
  kerberos_enabled        = optional(bool, false)
  ip_configuration = object({
    subnet_id = string
  })
})
```

## Notes

Included in the usage is a list of network rules associated with bastion hosts.
