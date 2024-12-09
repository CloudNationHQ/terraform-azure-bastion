locals {
  rules = {
    allow_https_inbound = {
      name                       = "AllowHttpsInbound"
      description                = "Allow HTTPS traffic from the internet."
      priority                   = 120
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "443"
      source_address_prefix      = "Internet"
      destination_address_prefix = "*"
    },
    allow_gateway_manager_inbound = {
      name                       = "AllowGatewayManagerInbound"
      description                = "Allow Gateway Manager to manage Bastion."
      priority                   = 130
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "443"
      source_address_prefix      = "GatewayManager"
      destination_address_prefix = "*"
    },
    allow_load_balancer_inbound = {
      name                       = "AllowLoadBalancerInbound"
      description                = "Allow traffic from Azure Load Balancer."
      priority                   = 140
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "443"
      source_address_prefix      = "AzureLoadBalancer"
      destination_address_prefix = "*"
    },
    allow_bastion_host_communication_inbound = {
      name                       = "AllowBastionHostCommunication"
      description                = "Allow traffic within the virtual network."
      priority                   = 150
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_ranges    = ["8080", "5701"]
      source_address_prefix      = "VirtualNetwork"
      destination_address_prefix = "VirtualNetwork"
    },
    allow_ssh_rdp_outbound = {
      name                       = "AllowSshRdpOutbound"
      description                = "Allow SSH and RDP traffic to VMs."
      priority                   = 100
      direction                  = "Outbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_ranges    = ["22", "3389"]
      source_address_prefix      = "*"
      destination_address_prefix = "VirtualNetwork"
    },
    allow_azure_cloud_outbound = {
      name                       = "AllowAzureCloudOutbound"
      description                = "Allow HTTPS traffic to Azure Cloud."
      priority                   = 110
      direction                  = "Outbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "443"
      source_address_prefix      = "*"
      destination_address_prefix = "AzureCloud"
    },
    allow_bastion_host_communication_outbound = {
      name                       = "AllowBastionCommunication"
      description                = "Allow traffic within the virtual network."
      priority                   = 120
      direction                  = "Outbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_ranges    = ["8080", "5701"]
      source_address_prefix      = "VirtualNetwork"
      destination_address_prefix = "VirtualNetwork"
    },
    allow_get_session_information = {
      name                       = "AllowGetSessionInformation"
      description                = "Allow HTTP traffic for session info."
      priority                   = 130
      direction                  = "Outbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "80"
      source_address_prefix      = "*"
      destination_address_prefix = "Internet"
    }
  }
}
