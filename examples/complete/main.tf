module "naming" {
  source  = "cloudnationhq/naming/azure"
  version = "~> 0.1"

  suffix = ["demo", "dev"]
}

module "rg" {
  source  = "cloudnationhq/rg/azure"
  version = "~> 0.1"

  groups = {
    demo = {
      name   = module.naming.resource_group.name
      region = "westeurope"
    }
  }
}

module "network" {
  source  = "cloudnationhq/vnet/azure"
  version = "~> 2.0"

  naming = local.naming

  vnet = {
    name          = module.naming.virtual_network.name
    location      = module.rg.groups.demo.location
    resourcegroup = module.rg.groups.demo.name
    cidr          = ["10.19.0.0/16"]

    subnets = {
      bastion = {
        name = "AzureBastionSubnet"
        cidr = ["10.19.1.0/27"]
        nsg = {
          rules = local.rules
        }
      }
    }
  }
}

module "bastion" {
  source  = "cloudnationhq/bastion/azure"
  version = "~> 0.1"

  naming = local.naming
  host   = local.host
}
