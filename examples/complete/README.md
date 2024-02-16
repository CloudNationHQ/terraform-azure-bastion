This example illustrates a bastion host setup.

## Usage

```hcl
module "bastion" {
  source  = "cloudnationhq/bastion/azure"
  version = "~> 0.5"

  naming = local.naming

  host = {
    name          = module.naming.bastion_host.name
    location      = module.rg.groups.demo.location
    resourcegroup = module.rg.groups.demo.name
    subnet        = module.network.subnets.bastion.id
    copy_paste    = true
  }
}
```

It conforms to the rules outlined below.

```hcl
locals {
  rules = [
    {
      name                         = "AllowHttpsInbound"
      description                  = "Allow connection from any host on https"
      protocol                     = "Tcp"
      source_port_range            = "*"
      destination_port_range       = 443
      source_address_prefix        = "Internet"
      destination_address_prefix   = "*"
      access                       = "Allow"
      priority                     = 100
      direction                    = "Inbound"
      source_port_ranges           = []
      destination_port_ranges      = []
      source_address_prefixes      = []
      destination_address_prefixes = []
    },
    {
      name                         = "AllowGatewayManagerInbound"
      description                  = "This enables the control plane, that is, Gateway Manager to be able to talk to Azure Bastion."
      protocol                     = "Tcp"
      source_port_range            = "*"
      destination_port_range       = 443
      source_address_prefix        = "GatewayManager"
      destination_address_prefix   = "*"
      access                       = "Allow"
      priority                     = 110
      direction                    = "Inbound"
      source_port_ranges           = []
      destination_port_ranges      = []
      source_address_prefixes      = []
      destination_address_prefixes = []
    },
    {
      name                       = "AllowSshRdpOutbound"
      description                = "Egress Traffic to target VMs: Azure Bastion will reach the target VMs over private IP and SSH/RDP port"
      protocol                   = "*"
      source_port_range          = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "VirtualNetwork"
      access                     = "Allow"
      priority                   = 100
      direction                  = "Outbound"
      source_port_ranges         = []
      destination_port_ranges = [
        "22",
        "3389"
      ]
      source_address_prefixes      = []
      destination_address_prefixes = []
    },
    {
      name                         = "AllowAzureCloudOutbound"
      description                  = "Egress Traffic to other public endpoints in Azure"
      protocol                     = "Tcp"
      source_port_range            = "*"
      destination_port_range       = 443
      source_address_prefix        = "*"
      destination_address_prefix   = "AzureCloud"
      access                       = "Allow"
      priority                     = 110
      direction                    = "Outbound"
      source_port_ranges           = []
      destination_port_ranges      = []
      source_address_prefixes      = []
      destination_address_prefixes = []
    },
    {
      name                       = "AllowBastionCommunication"
      description                = "Egress Traffic to other public endpoints in Azure"
      protocol                   = "*"
      source_port_range          = "*"
      source_address_prefix      = "VirtualNetwork"
      destination_address_prefix = "VirtualNetwork"
      access                     = "Allow"
      priority                   = 120
      direction                  = "Outbound"
      source_port_ranges         = []
      destination_port_ranges = [
        "8080",
        "5701"
      ]
      source_address_prefixes      = []
      destination_address_prefixes = []
    },
    {
      name                         = "AllowGetSessionInformation"
      description                  = "Egress Traffic to other public endpoints in Azure"
      protocol                     = "*"
      source_port_range            = "*"
      source_address_prefix        = "*"
      destination_port_range       = 80
      destination_address_prefix   = "Internet"
      access                       = "Allow"
      priority                     = 130
      direction                    = "Outbound"
      source_port_ranges           = []
      destination_port_ranges      = []
      source_address_prefixes      = []
      destination_address_prefixes = []
    }
  ]
}
```
