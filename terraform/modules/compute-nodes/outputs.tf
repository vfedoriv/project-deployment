output "source_instance_id" {
  description = "The ID of the source instance."
  value       = google_compute_instance.source_instance.id
}

output "replica_instance_id" {
  description = "The ID of the replica instance."
  value       = google_compute_instance.replica_instance.id
}