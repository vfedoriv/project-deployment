resource "google_sql_database_instance" "orchestrator_instance" {
  name             = var.orchestrator_db_instance_name
  region           = var.region
  database_version = "MYSQL_8_0"

  settings {
    tier              = var.orchestrator_db_tier
    disk_size         = var.orchestrator_db_disk_size
    disk_type         = "PD_SSD"
    activation_policy = "ALWAYS"
  }
}

resource "google_sql_database" "orchestrator_db" {
  name     = "orchestrator"
  instance = google_sql_database_instance.orchestrator_instance.name
}