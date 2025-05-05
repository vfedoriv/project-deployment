output "static_ip_address" {
  description = "The static IP address for the load balancer."
  value       = google_compute_global_address.static_ip.address
}

output "backend_service_id" {
  description = "The ID of the backend service."
  value       = google_compute_backend_service.backend.id
}

output "url_map_id" {
  description = "The ID of the URL map."
  value       = google_compute_url_map.url_map.id
}

output "http_proxy_id" {
  description = "The ID of the HTTP proxy."
  value       = google_compute_target_http_proxy.http_proxy.id
}

output "forwarding_rule_id" {
  description = "The ID of the forwarding rule."
  value       = google_compute_global_forwarding_rule.http_forwarding_rule.id
}

output "health_check_id" {
  description = "The ID of the health check."
  value       = google_compute_health_check.default.id
}