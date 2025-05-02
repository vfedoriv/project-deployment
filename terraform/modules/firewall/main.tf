resource "google_compute_firewall" "firewall_rules" {
  count = length(var.firewall_rules)

  name        = var.firewall_rules[count.index].name
  description = var.firewall_rules[count.index].description
  network     = var.network
  priority    = var.firewall_rules[count.index].priority
  direction   = var.firewall_rules[count.index].direction

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  source_ranges = var.firewall_rules[count.index].ranges
  target_tags   = var.firewall_rules[count.index].targets
}