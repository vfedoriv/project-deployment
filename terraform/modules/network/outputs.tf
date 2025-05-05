output "network_id" {
  description = "The ID of the created network."
  value       = google_compute_network.private_network.id
}

output "subnet_id" {
  description = "The ID of the created subnet."
  value       = google_compute_subnetwork.private_subnet.id
}