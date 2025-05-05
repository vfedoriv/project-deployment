output "mig_a_id" {
  description = "The ID of the primary managed instance group."
  value       = google_compute_instance_group_manager.mig_a.id
}

output "mig_b_id" {
  description = "The ID of the failover managed instance group."
  value       = google_compute_instance_group_manager.mig_b.id
}