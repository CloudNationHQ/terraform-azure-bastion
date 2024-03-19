data "azurerm_subscription" "current" {}

# public ip
resource "azurerm_public_ip" "pip" {
  name                    = try(var.host.public_ip.name, var.naming.public_ip)
  resource_group_name     = coalesce(lookup(var.host, "resourcegroup", null), var.resourcegroup)
  location                = coalesce(lookup(var.host, "location", null), var.location)
  allocation_method       = try(var.host.public_ip.allocation_method, "Static")
  sku                     = try(var.host.public_ip.sku, "Standard")
  zones                   = try(var.host.public_ip.zones, [1, 2, 3])
  public_ip_prefix_id     = try(var.host.public_ip.public_ip_prefix_id, null)
  sku_tier                = try(var.host.public_ip.sku_tier, "Regional")
  edge_zone               = try(var.host.public_ip.edge_zone, null)
  ip_version              = try(var.host.public_ip.ip_version, "IPv4")
  reverse_fqdn            = try(var.host.public_ip.reverse_fqdn, null)
  domain_name_label       = try(var.host.public_ip.domain_name_label, null)
  ddos_protection_mode    = try(var.host.public_ip.ddos_protection_mode, "VirtualNetworkInherited")
  ddos_protection_plan_id = try(var.host.public_ip.ddos_protection_plan_id, null)
  idle_timeout_in_minutes = try(var.host.public_ip.idle_timeout_in_minutes, null)
  ip_tags                 = try(var.host.public_ip.ip_tags, null)
  tags                    = try(var.host.public_ip.tags, var.tags, null)
}

# bastion host
resource "azurerm_bastion_host" "bastion" {
  name                = try(var.host.name, var.naming.bastion_host)
  resource_group_name = coalesce(lookup(var.host, "resourcegroup", null), var.resourcegroup)
  location            = coalesce(lookup(var.host, "location", null), var.location)

  sku                    = try(var.host.sku, "Standard")
  scale_units            = try(var.host.scale_units, 2)
  copy_paste_enabled     = try(var.host.copy_paste_enabled, false)
  file_copy_enabled      = try(var.host.file_copy_enabled, false)
  tunneling_enabled      = try(var.host.tunneling_enabled, false)
  ip_connect_enabled     = try(var.host.ip_connect_enabled, false)
  shareable_link_enabled = try(var.host.shareable_link_enabled, false)
  tags                   = try(var.host.tags, var.tags, null)

  ip_configuration {
    name                 = try(var.host.ip_configuration.name, "configuration")
    subnet_id            = var.host.ip_configuration.subnet_id
    public_ip_address_id = try(var.host.ip_configuration.public_ip_address_id, azurerm_public_ip.pip.id)
  }
}
