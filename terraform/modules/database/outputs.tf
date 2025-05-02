output "orchestrator_instance_name" {
  description = "The name of the Orchestrator Cloud SQL instance."
  value       = google_sql_database_instance.orchestrator_instance.name
}

output "orchestrator_db_name" {
  description = "The name of the Orchestrator database."
  value       = google_sql_database.orchestrator_db.name
}

output "orchestrator_instance_connection_name" {
  description = "The connection name of the Orchestrator Cloud SQL instance."
  value       = google_sql_database_instance.orchestrator_instance.connection_name
}