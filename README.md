# Bastion Host

This Terraform module simplifies the creation of a secure bastion host for remote access to private instances within a network, with configurable options for security groups, instance type, and key pair authentication.

## Features

Utilization of terratest for robust validation.

<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (~> 1.0)

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (~> 4.0)

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) (~> 4.0)

## Resources

The following resources are used by this module:

- [azurerm_bastion_host.bastion](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/bastion_host) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_host"></a> [host](#input\_host)

Description: Contains all configurations for bastion hosts

Type:

```hcl
object({
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
```

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_location"></a> [location](#input\_location)

Description: default azure region to be used.

Type: `string`

Default: `null`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: default resource group to be used.

Type: `string`

Default: `null`

### <a name="input_tags"></a> [tags](#input\_tags)

Description: tags to be added to the resources

Type: `map(string)`

Default: `{}`

## Outputs

The following outputs are exported:

### <a name="output_host"></a> [host](#output\_host)

Description: Contains all configurations for bastion hosts
<!-- END_TF_DOCS -->

## Goals

For more information, please see our [goals and non-goals](./GOALS.md).

## Testing

For more information, please see our testing [guidelines](./TESTING.md)

## Notes

Using a dedicated module, we've developed a naming convention for resources that's based on specific regular expressions for each type, ensuring correct abbreviations and offering flexibility with multiple prefixes and suffixes.

Full examples detailing all usages, along with integrations with dependency modules, are located in the examples directory.

To update the module's documentation run `make doc`

## Contributors

We welcome contributions from the community! Whether it's reporting a bug, suggesting a new feature, or submitting a pull request, your input is highly valued.

For more information, please see our contribution [guidelines](./CONTRIBUTING.md). <br><br>

<a href="https://github.com/cloudnationhq/terraform-azure-bastion/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=cloudnationhq/terraform-azure-bastion" />
</a>

## License

MIT Licensed. See [LICENSE](./LICENSE) for full details.

## References

- [Documentation](https://learn.microsoft.com/en-us/azure/bastion/)
- [Rest Api](https://learn.microsoft.com/en-us/rest/api/virtualnetwork/bastion-hosts)
- [Rest Api Specs](https://github.com/Azure/azure-rest-api-specs/blob/main/specification/network/resource-manager/Microsoft.Network/stable/2023-04-01/bastionHost.json)
