resource "google_sql_database_instance" "source" {
  name             = "source-db"
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier = var.database_instance_types["source"]
    disk_size = var.disk_sizes["source_db"]
    disk_type = "PD_SSD"
  }
}

resource "google_sql_database_instance" "replica" {
  name             = "replica-db"
  database_version = "MYSQL_8_0"
  region           = var.region
  master_instance_name = google_sql_database_instance.source.name

  settings {
    tier = var.database_instance_types["replica"]
    disk_size = var.disk_sizes["replica_db"]
    disk_type = "PD_SSD"
  }
}

resource "google_sql_database_instance" "orchestrator_db" {
  name             = "orchestrator-db"
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier = var.orchestrator_db_instance_type
    disk_size = var.disk_sizes["orchestrator_db"]
    disk_type = "PD_SSD"
  }
}