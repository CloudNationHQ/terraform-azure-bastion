module "naming" {
  source  = "cloudnationhq/naming/azure"
  version = "~> 0.24"

  suffix = ["demo", "dev"]
}

module "rg" {
  source  = "cloudnationhq/rg/azure"
  version = "~> 2.0"

  groups = {
    demo = {
      name     = module.naming.resource_group.name_unique
      location = "westeurope"
    }
  }
}

module "network" {
  source  = "cloudnationhq/vnet/azure"
  version = "~> 8.0"

  naming = local.naming

  vnet = {
    name           = module.naming.virtual_network.name
    location       = module.rg.groups.demo.location
    resource_group = module.rg.groups.demo.name
    address_space  = ["10.19.0.0/16"]

    subnets = {
      bastion = {
        name             = "AzureBastionSubnet"
        address_prefixes = ["10.19.1.0/27"]
        network_security_group = {
          rules = local.rules
        }
      }
    }
  }
}

module "public_ip" {
  source  = "cloudnationhq/pip/azure"
  version = "~> 4.0"

  configs = {
    bastion = {
      name                = module.naming.public_ip.name
      location            = module.rg.groups.demo.location
      resource_group_name = module.rg.groups.demo.name
      zones               = ["1", "2", "3"]
    }
  }
}

module "bastion" {
  source  = "cloudnationhq/bastion/azure"
  version = "~> 4.0"

  host = {
    name                = module.naming.bastion_host.name_unique
    location            = module.rg.groups.demo.location
    resource_group_name = module.rg.groups.demo.name

    copy_paste_enabled     = true
    file_copy_enabled      = true
    tunneling_enabled      = true
    ip_connect_enabled     = true
    shareable_link_enabled = true
    kerberos_enabled       = true

    ip_configuration = {
      subnet_id            = module.network.subnets.bastion.id
      public_ip_address_id = module.public_ip.configs.bastion.id
    }
  }
}
