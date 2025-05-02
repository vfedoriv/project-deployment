output "proxysql_instances" {
  value = google_compute_instance.proxysql[*].self_link
}

output "orchestrator_instance" {
  value = google_compute_instance.orchestrator.self_link
}