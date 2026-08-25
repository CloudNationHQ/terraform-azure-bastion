# bastion host
resource "azurerm_bastion_host" "this" {
  resource_group_name = coalesce(
    var.host.resource_group_name, var.resource_group_name
  )

  location = coalesce(
    var.host.location, var.location
  )

  name                      = var.host.name
  sku                       = var.host.sku
  scale_units               = var.host.scale_units
  copy_paste_enabled        = var.host.copy_paste_enabled
  file_copy_enabled         = var.host.file_copy_enabled
  tunneling_enabled         = var.host.tunneling_enabled
  ip_connect_enabled        = var.host.ip_connect_enabled
  shareable_link_enabled    = var.host.shareable_link_enabled
  kerberos_enabled          = var.host.kerberos_enabled
  session_recording_enabled = var.host.session_recording_enabled
  zones                     = var.host.zones
  virtual_network_id        = var.host.virtual_network_id

  ip_configuration {
    name                 = var.host.ip_configuration.name
    subnet_id            = var.host.ip_configuration.subnet_id
    public_ip_address_id = var.host.ip_configuration.public_ip_address_id
  }

  tags = coalesce(
    var.host.tags, var.tags
  )
}
