output "prometheus_instance_id" {
  description = "The ID of the Prometheus instance."
  value       = google_compute_instance.prometheus.id
}

output "grafana_instance_id" {
  description = "The ID of the Grafana instance."
  value       = google_compute_instance.grafana.id
}