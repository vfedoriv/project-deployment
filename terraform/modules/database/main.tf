resource "google_sql_database_instance" "source_db" {
  name             = var.source_db_name
  region           = var.region
  database_version = "MYSQL_8_0"
  settings {
    tier = var.db_tier
  }
}

resource "google_sql_database_instance" "replica_db" {
  name             = var.replica_db_name
  region           = var.region
  database_version = "MYSQL_8_0"
  settings {
    tier = var.db_tier
  }
  replica_configuration {
    source_instance_name = google_sql_database_instance.source_db.name
  }
}

resource "google_sql_database_instance" "orchestrator_db" {
  name             = var.orchestrator_db_name
  region           = var.region
  database_version = "MYSQL_8_0"
  settings {
    tier = var.db_tier
  }
}