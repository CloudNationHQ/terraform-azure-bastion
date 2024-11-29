# bastion host
resource "azurerm_bastion_host" "bastion" {
  name                = try(var.host.name, var.naming.bastion_host)
  resource_group_name = coalesce(lookup(var.host, "resource_group", null), var.resource_group)
  location            = coalesce(lookup(var.host, "location", null), var.location)

  sku                       = try(var.host.sku, "Standard")
  scale_units               = try(var.host.scale_units, 2)
  copy_paste_enabled        = try(var.host.copy_paste_enabled, false)
  file_copy_enabled         = try(var.host.file_copy_enabled, false)
  tunneling_enabled         = try(var.host.tunneling_enabled, false)
  ip_connect_enabled        = try(var.host.ip_connect_enabled, false)
  shareable_link_enabled    = try(var.host.shareable_link_enabled, false)
  kerberos_enabled          = try(var.host.kerberos_enabled, false)
  session_recording_enabled = try(var.host.session_recording_enabled, false)
  zones                     = try(var.host.zones, [])
  tags                      = try(var.host.tags, var.tags, null)
  virtual_network_id        = try(var.host.virtual_network_id, null)

  ip_configuration {
    name                 = try(var.host.ip_configuration.name, "configuration")
    subnet_id            = var.host.ip_configuration.subnet_id
    public_ip_address_id = var.host.ip_configuration.public_ip_address_id
  }
}
