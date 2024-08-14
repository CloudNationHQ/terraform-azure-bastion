output "host" {
  description = "contains all bastion related configuration"
  value       = azurerm_bastion_host.bastion
}

output "subscription_id" {
  description = "contains the current subscription id"
  value       = data.azurerm_subscription.current.subscription_id
}
