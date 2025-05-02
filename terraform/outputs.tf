output "network_name" {
  value = module.network.network_name
}

output "firewall_rules" {
  value = module.firewall.rules
}

output "compute_instances" {
  value = module.compute_nodes.instances
}

output "database_instances" {
  value = module.database.instances
}

output "security_policies" {
  value = module.security.policies
}
