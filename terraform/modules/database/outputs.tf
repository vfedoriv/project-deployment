output "source_db_instance" {
  value = google_sql_database_instance.source.self_link
}

output "replica_db_instance" {
  value = google_sql_database_instance.replica.self_link
}

output "orchestrator_db_instance" {
  value = google_sql_database_instance.orchestrator_db.self_link
}