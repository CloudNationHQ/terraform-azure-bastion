output "host" {
  description = "contains all bastion related configuration"
  value       = azurerm_bastion_host.bastion
}

output "subscriptionId" {
  description = "contains the current subscription id"
  value       = data.azurerm_subscription.current.subscription_id
}
