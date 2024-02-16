data "azurerm_subscription" "current" {}

# public ip
resource "azurerm_public_ip" "pip" {
  name                = try(var.host.public_ip.name, var.naming.public_ip)
  resource_group_name = var.host.resourcegroup
  location            = var.host.location
  allocation_method   = try(var.host.public_ip.allocation_method, "Static")
  sku                 = try(var.host.public_ip.sku, "Standard")
  zones               = try(var.host.public_ip.zones, [1, 2, 3])
}

# bastion host
resource "azurerm_bastion_host" "bastion" {
  name                = try(var.host.name, var.naming.bastion_host)
  resource_group_name = var.host.resourcegroup
  location            = var.host.location

  sku                    = try(var.host.sku, "Standard")
  scale_units            = try(var.host.scale_units, 2)
  copy_paste_enabled     = try(var.host.copy_paste_enabled, false)
  file_copy_enabled      = try(var.host.file_copy_enabled, false)
  tunneling_enabled      = try(var.host.tunneling_enabled, false)
  ip_connect_enabled     = try(var.host.ip_connect_enabled, false)
  shareable_link_enabled = try(var.host.shareable_link_enabled, false)

  ip_configuration {
    name                 = "configuration"
    subnet_id            = var.host.subnet
    public_ip_address_id = azurerm_public_ip.pip.id
  }
}
