output "allow_internal_rule_id" {
  description = "The ID of the internal firewall rule."
  value       = google_compute_firewall.allow_internal.id
}

output "allow_ssh_rule_id" {
  description = "The ID of the SSH firewall rule."
  value       = google_compute_firewall.allow_ssh.id
}