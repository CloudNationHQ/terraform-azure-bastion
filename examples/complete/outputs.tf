output "bastion" {
  value     = module.bastion.host
  sensitive = true
}

output "subscription_id" {
  value = module.bastion.subscription_id
}
