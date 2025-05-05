output "source_db_instance_id" {
  description = "The ID of the source database instance."
  value       = google_sql_database_instance.source_db.id
}

output "replica_db_instance_id" {
  description = "The ID of the replica database instance."
  value       = google_sql_database_instance.replica_db.id
}

output "orchestrator_db_instance_id" {
  description = "The ID of the orchestrator database instance."
  value       = google_sql_database_instance.orchestrator_db.id
}