output "rules" {
  value = google_compute_firewall.firewall_rules[*].name
}