output "network_id" {
  description = "The ID of the created network."
  value       = module.network.network_id
}

output "compute_nodes" {
  description = "Details of the compute nodes."
  value       = module.compute_nodes
}

output "firewall_rules" {
  description = "Details of the firewall rules."
  value       = module.firewall
}

output "security_config" {
  description = "Details of the security configuration."
  value       = module.security
}

output "database_config" {
  description = "Details of the database configuration."
  value       = module.database
}